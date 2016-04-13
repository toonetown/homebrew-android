<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/11">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:apply-templates select="sdk:ndk[not(sdk:archives/sdk:archive/sdk:url[contains(., 'beta')])]" />
    </xsl:template>

    <xsl:template match="sdk:ndk">
        <xsl:variable name="archive" select="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]/.." />
        <xsl:text>  url '</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>'&#10;</xsl:text>
        
        <xsl:text>  version '</xsl:text>
        <xsl:value-of select="./sdk:revision" />
        <xsl:variable name="versionFlag" select="concat('-r', ./sdk:revision)" />
        <xsl:if test="contains($archive/sdk:url, $versionFlag)">
            <xsl:value-of select="substring-before(substring-after($archive/sdk:url, $versionFlag), '-')" />
        </xsl:if>
        <xsl:text>'&#10;</xsl:text>
        
        <xsl:text>  </xsl:text>
        <xsl:value-of select="$archive/sdk:checksum/@type" />
        <xsl:text> '</xsl:text>
        <xsl:value-of select="$archive/sdk:checksum" />
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
