<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
        <xsl:apply-templates select="sdk:extra" />
    </xsl:template>

    <xsl:template match="sdk:extra">
        <xsl:value-of select="./sdk:vendor-id" />
        <xsl:text>|</xsl:text>
        <xsl:value-of select="./sdk:path" />            
        <xsl:text> </xsl:text>
    </xsl:template>
</xsl:stylesheet>
