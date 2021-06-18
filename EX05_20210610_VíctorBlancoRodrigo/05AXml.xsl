<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05AXml.xsl
    Created on : 10 de junio de 2021, 9:37
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="/mysqldump">
        <xsl:element name="{name()}">
            <xsl:apply-templates select=""/>
        </xsl:element>
    </xsl:template>
    
  

</xsl:stylesheet>
