<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : factura.xsl
    Created on : 26 de abril de 2021, 18:53
    Author     : Usuario
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/factura">
        <html>
            <head>
                <title>factura.xsl Víctor Blanco Rodrigo</title>
            </head>
            <body>
                <h1>Factura de Informática Sauces</h1>
                <!--Datos del emisor-->
                <div>
                     <xsl:value-of select="datos_emisor"/>
                </div>
                <!--Datos del receptor-->
                <div>
                     <xsl:value-of select="datos_receptor"/>
                </div>
                <!--Datos de la factura-->
                <div>
                     <xsl:value-of select="datos_factura"/>
                </div>
                
            </body>
        </html>
    </xsl:template>
    

</xsl:stylesheet>
