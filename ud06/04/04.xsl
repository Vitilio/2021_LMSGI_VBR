<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 4 de mayo de 2021, 13:22
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/factura">
        <factura>
            <xsl:apply-templates select="@*"/>
            <datos_emisor>
                <xsl:apply-templates select="datos_emisor/*"/>
            </datos_emisor>
            <datos_receptor>
                <xsl:apply-templates select="datos_receptor/@*"/>
                <xsl:apply-templates select="datos_receptor/*"/>
            </datos_receptor>
            <datos_factura>
                <xsl:apply-templates select="datos_factura/@*"/>
                <xsl:apply-templates select="datos_factura/*"/>
            </datos_factura>
        </factura>
    </xsl:template>
    <xsl:template match="@*">
        <xsl:element name="{name()}">
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="datos_receptor/@*">
        <xsl:element name="{name()}">
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="datos_factura/@*">
        <xsl:element name="{name()}">
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="*">
        <xsl:element name="{name()}">
            <xsl:value-of select="current()"/>
        </xsl:element>
        <xsl:apply-templates select="@*"/>
    </xsl:template>
</xsl:stylesheet>
