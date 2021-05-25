<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 8 de abril de 2021, 9:52
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/edificio">
        <html>
            <head>
                <title>01 XSLT Victor Blanco Rodrigo</title>
            </head>
            <body>
                <h1>Informacion de las viviendas</h1>
                <xsl:apply-templates select="vivienda"/>
                <div>Numero de viviendas <xsl:value-of select="count(vivienda)"/></div> 
                <div>Numero total de vecinos <xsl:value-of select="count(//nombre)"/></div>  
            </body>
        </html>
    </xsl:template>
    <xsl:template match="vivienda">
        <div>
            Piso: <xsl:value-of select="piso"/>
            Puerta: <xsl:value-of select="puerta"/>
            <ol>
                <xsl:apply-templates select="vecinos/nombre"/>
            </ol>
        </div>
    </xsl:template>
    <xsl:template match="vecinos/nombre">
        <li>
            <xsl:value-of select="current()/text()"/> <!-- current()/. -> valor actual -->
        </li>
    </xsl:template>
    
</xsl:stylesheet>
