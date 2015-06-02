<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/sys-img/3">
    <xsl:param name="api-level" />
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-sys-img">
        <xsl:for-each select="sdk:system-image[not(sdk:obsolete) and string(sdk:codename) = '']">
            <xsl:if test="sdk:api-level = $api-level">
                <xsl:apply-templates select="." />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sdk:system-image">
        <xsl:choose>
            <xsl:when test="./sdk:abi = 'armeabi-v7a'">
                <xsl:text>armeabi-v7a|Armv7|yes </xsl:text>
            </xsl:when>
            <xsl:when test="./sdk:abi = 'x86'">
                <xsl:text>x86|I386|yes </xsl:text>
            </xsl:when>
            <xsl:when test="./sdk:abi = 'x86_64'">
                <xsl:text>x86_64|X86_64 </xsl:text>
            </xsl:when>
            <xsl:when test="./sdk:abi = 'mips'">
                <xsl:text>mips|Mips </xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
