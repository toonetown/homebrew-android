<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
        <xsl:apply-templates select="sdk:extra" />
    </xsl:template>

    <xsl:template match="sdk:extra">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]/.." />
        <xsl:text>  url "</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/extras/intel/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>"&#10;</xsl:text>
        
        <xsl:text>  version "</xsl:text>
        <xsl:value-of select="./sdk:revision/sdk:major" />
        <xsl:if test="./sdk:revision/sdk:minor">
            <xsl:text>.</xsl:text>
            <xsl:value-of select="./sdk:revision/sdk:minor" />
            <xsl:if test="./sdk:revision/sdk:micro">
                <xsl:text>.</xsl:text>
                <xsl:value-of select="./sdk:revision/sdk:micro" />
            </xsl:if>
        </xsl:if>
        <xsl:text>"</xsl:text>
    </xsl:template>
</xsl:stylesheet>
