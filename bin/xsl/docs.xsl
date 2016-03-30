<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/11">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:apply-templates select="sdk:doc[string(sdk:codename) = '']" />
    </xsl:template>

    <xsl:template match="sdk:doc">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive" />
        <xsl:text>  url '</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>'&#10;</xsl:text>

        <xsl:text>  version '</xsl:text>
        <xsl:value-of select="./sdk:api-level" />
        <xsl:text>-r</xsl:text>
        <xsl:value-of select="./sdk:revision" />
        <xsl:text>'&#10;</xsl:text>

        <xsl:text>  </xsl:text>
        <xsl:value-of select="$archive/sdk:checksum/@type" />
        <xsl:text> '</xsl:text>
        <xsl:value-of select="$archive/sdk:checksum" />
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
