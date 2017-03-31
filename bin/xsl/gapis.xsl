<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:param name="api-level" select="0"/>
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
        <xsl:for-each select="sdk:add-on[string(sdk:name-id) = 'google_apis']">
            <xsl:if test="sdk:api-level = $api-level">
                <xsl:apply-templates select="." />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="print-platform">
        <xsl:param name="platform" />
        <xsl:param name="archive" />
        <xsl:if test="sdk:description != ''">
            <xsl:text>  desc "</xsl:text>
            <xsl:value-of select="sdk:description" />
            <xsl:text>"&#10;</xsl:text>
        </xsl:if>
        
        <xsl:text>  url "</xsl:text>
        <xsl:if test="not(contains($archive/sdk:url, '://'))">
            <xsl:text>https://dl.google.com/android/repository/</xsl:text>
        </xsl:if>
        <xsl:value-of select="$archive/sdk:url" />
        <xsl:text>"&#10;</xsl:text>

        <xsl:text>  version "</xsl:text>
        <xsl:value-of select="$platform/sdk:revision" />
        <xsl:text>"&#10;</xsl:text>

        <xsl:text>  </xsl:text>
        <xsl:value-of select="$archive/sdk:checksum/@type" />
        <xsl:text> "</xsl:text>
        <xsl:value-of select="$archive/sdk:checksum" />
        <xsl:text>"</xsl:text>
    </xsl:template>
    
    <xsl:template match="sdk:add-on">
        <xsl:choose>
            <xsl:when test="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]">
                <xsl:call-template name="print-platform">
                    <xsl:with-param name="platform" select="." />
                    <xsl:with-param name="archive" 
                                    select="./sdk:archives/sdk:archive/sdk:host-os[contains(., 'macosx')]/.." />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="not(./sdk:archives/sdk:archive/sdk:host-os)">
                <xsl:call-template name="print-platform">
                    <xsl:with-param name="platform" select="." />
                    <xsl:with-param name="archive" select="./sdk:archives/sdk:archive" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
