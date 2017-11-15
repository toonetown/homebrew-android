<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/sys-img/3">
    <xsl:param name="api-level" />
    <xsl:param name="abi" />
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-sys-img">
        <xsl:for-each select="sdk:system-image[string(sdk:codename) = '']">
            <xsl:if test="sdk:api-level = $api-level and sdk:abi = $abi">
                <xsl:apply-templates select="." />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:key name="kExtraKey" match="sdk:system-image[string(sdk:codename) = '']" use="concat(sdk:api-level, '|', sdk:abi)" />
    <xsl:template match="sdk:system-image[
        not(generate-id() = generate-id(key('kExtraKey', concat(sdk:api-level, '|', sdk:abi))[last()]))
    ]" />

    <xsl:template match="sdk:system-image">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive" />
        <xsl:if test="sdk:description != ''">
            <xsl:text>  desc "</xsl:text>
            <xsl:value-of select="sdk:description" />
            <xsl:text>"&#10;</xsl:text>
        </xsl:if>
        
        <xsl:text>  url "</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/sys-img/google_apis/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>"&#10;</xsl:text>

        <xsl:text>  version "</xsl:text>
        <xsl:value-of select="./sdk:revision" />
        <xsl:text>"&#10;</xsl:text>

        <xsl:text>  </xsl:text>
        <xsl:value-of select="$archive/sdk:checksum/@type" />
        <xsl:text> "</xsl:text>
        <xsl:value-of select="$archive/sdk:checksum" />
        <xsl:text>"</xsl:text>
    </xsl:template>
</xsl:stylesheet>
