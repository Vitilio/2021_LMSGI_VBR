<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 20 de abril de 2021, 13:15
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/horario">
        <html>
            <head>
                <title>03 XSLT Victor Blanco Rodrigo</title>
            </head>
            <body>
                <h1>HORARIO DEL CURSO <xsl:value-of select="./@curso"/></h1>
              
                <table border="1">
                    <tr>
                        <th>Codigo del modulo</th>
                        <th>Nombre del modulo</th>
                    </tr>
                    <xsl:apply-templates select="modulos/modulo"/>
                </table>
                
                <table border="1">
                    <tr>
                        <th>Codigo del profesor</th>
                        <th>Nombre del profesor</th>
                    </tr>
                    <xsl:apply-templates select="profesores/profesor"/>
                </table>
                
                <table border="1"> 
                    <tr>
                        <th>Codigo del modulo</th>
                        <th>Codigo del profesor que lo imparte</th>
                    </tr>
                    <xsl:apply-templates select="imparte/asignatura"/>
                </table>
            </body>
        </html>
    </xsl:template>
<!--Mostrar los modulos -->
    <xsl:template match="modulos/modulo">
        <tr>
            <td>
                <abbr>
                    <xsl:attribute name="title">
                        <xsl:value-of select="current()/text()"/>
                    </xsl:attribute>
                </abbr>
                <xsl:value-of select="@codM"/>
            </td>
            <td><xsl:value-of select="current()/text()"/></td>        
        </tr>
    </xsl:template>
<!--Mostrar los profesores -->
    <xsl:template match="profesores/profesor">
        <tr>
            <td><xsl:value-of select="@codP"/></td>
            <td><xsl:value-of select="current()/text()"/></td>        
        </tr>
    </xsl:template>
<!--Mostrar las relaciones -->
    <xsl:template match="imparte/asignatura">
        <tr>
            <td><xsl:value-of select="@codM"/></td>
            <td><xsl:value-of select="@codProfesor"/></td>        
        </tr>
    </xsl:template>
</xsl:stylesheet>



                
           
       