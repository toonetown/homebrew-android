<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:param name="vendor" />
    <xsl:param name="path" />
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
        <xsl:for-each select="sdk:extra">
            <xsl:if test="sdk:vendor-id = $vendor and sdk:path = $path">
                <xsl:apply-templates select="." />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sdk:extra">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive" />
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
