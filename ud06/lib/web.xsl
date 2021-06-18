<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : web.xsl
    Created on : 18 de mayo de 2021, 13:02
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template name="metaweb">
        <xsl:param name="titulo"/>
        <xsl:param name="descripcion"/>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <meta name="author" content="Víctor Blanco Rodrigo"/>
            <meta name="application-name" content="Dados"/>
            <meta name="description">
                <xsl:attribute name="content">
                    <xsl:value-of select="$descripcion"/>
                </xsl:attribute>
            </meta>
            <meta name="keywords" content="dados, caras, seis" />
            <meta name="robots" content="index, follow"/>      
            <link rel="stylesheet" href="../../css/estilos8.css" type="text/css" />
            <link rel="icon" type="image/x-icon" href="../../favicon.ico"/>
            <title><xsl:value-of select="$titulo"/></title>
    </xsl:template>

</xsl:stylesheet>
