<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
      <xsl:for-each select="sdk:extra">
          <xsl:if test="sdk:vendor-id = 'intel' and sdk:path = 'Hardware_Accelerated_Execution_Manager' and
                        contains(sdk:archives/sdk:archive/sdk:host-os, 'macosx')">
              <xsl:apply-templates select="." />
          </xsl:if>
      </xsl:for-each>
    </xsl:template>

    <xsl:key name="kExtraKey" match="sdk:extra" use="concat(sdk:vendor-id, '|', sdk:path, 
                                                            '|', sdk:archives/sdk:archive/sdk:host-os)" />
    <xsl:template match="sdk:extra[
        not(generate-id() = generate-id(key('kExtraKey', concat(sdk:vendor-id, '|', sdk:path,
                                                                '|', sdk:archives/sdk:archive/sdk:host-os))[last()]))
    ]" />

    <xsl:template match="sdk:extra">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]/.." />

        <xsl:text>  version '</xsl:text>
        <xsl:value-of select="./sdk:revision/sdk:major" />
        <xsl:if test="./sdk:revision/sdk:minor">
            <xsl:text>.</xsl:text>
            <xsl:value-of select="./sdk:revision/sdk:minor" />
            <xsl:if test="./sdk:revision/sdk:micro">
                <xsl:text>.</xsl:text>
                <xsl:value-of select="./sdk:revision/sdk:micro" />
            </xsl:if>
        </xsl:if>
        <xsl:text>'&#10;</xsl:text>
        <xsl:text>  sha256 :no_check&#10;&#10;</xsl:text>

        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>  # dl.google.com was verified as official when first introduced to the cask&#10;</xsl:text>
        </xsl:if>
        <xsl:text>  url '</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/extras/intel/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>'&#10;</xsl:text>

        <xsl:text>  name '</xsl:text>
        <xsl:value-of select="sdk:name-display" />
        <xsl:text>'&#10;</xsl:text>

        <xsl:text>  homepage '</xsl:text>
        <xsl:value-of select="sdk:desc-url" />
        <xsl:text>'&#10;</xsl:text>

    </xsl:template>
</xsl:stylesheet>
