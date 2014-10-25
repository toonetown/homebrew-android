<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/10">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:apply-templates select="sdk:platform[not(sdk:obsolete)]" />
    </xsl:template>

    <xsl:template match="sdk:platform">
        <xsl:value-of select="./sdk:api-level" />
        <xsl:text> </xsl:text>
    </xsl:template>
</xsl:stylesheet>
