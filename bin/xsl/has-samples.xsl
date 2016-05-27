<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/repository/12">
    <xsl:param name="api-level" select="0"/>
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-repository">
        <xsl:for-each select="sdk:sample[string(sdk:codename) = '']">
            <xsl:if test="sdk:api-level = $api-level">
                <xsl:text>yes</xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
