<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/12">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:apply-templates select="sdk:lldb[not(sdk:revision/sdk:preview)]" />
    </xsl:template>

    <xsl:template match="sdk:lldb">
        <xsl:value-of select="./sdk:revision/sdk:major" />
        <xsl:text>.</xsl:text>
        <xsl:value-of select="./sdk:revision/sdk:minor" />
        <xsl:text>.</xsl:text>
        <xsl:value-of select="./sdk:revision/sdk:micro" />
        <xsl:text> </xsl:text>
    </xsl:template>
</xsl:stylesheet>
