<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/10">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:for-each select="sdk:build-tool[not(sdk:revision/sdk:preview)]">
            <xsl:sort select="./sdk:revision/sdk:major" data-type="number" order="descending" />
            <xsl:sort select="./sdk:revision/sdk:minor" data-type="number" order="descending" />
            <xsl:sort select="./sdk:revision/sdk:micro" data-type="number" order="descending" />
            <xsl:if test="position() = 1"><xsl:apply-templates select="." /></xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sdk:build-tool">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]/.." />
        <xsl:text>  url '</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>http://dl-ssl.google.com/android/repository/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>'&#10;</xsl:text>

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

        <xsl:text>  </xsl:text>
        <xsl:value-of select="$archive/sdk:checksum/@type" />
        <xsl:text> '</xsl:text>
        <xsl:value-of select="$archive/sdk:checksum" />
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
