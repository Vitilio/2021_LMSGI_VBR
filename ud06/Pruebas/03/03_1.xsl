<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03_1.xsl
    Created on : 22 de abril de 2021, 8:43
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
                <title>03_1  XSLT Victor Blanco Rodrigo.xsl</title>
            </head>
            <body>
                <table border='1'>
                    <tr>
                        <th>LUNES</th> 
                        <th>MARTES</th> 
                        <th>MIERCOLES</th> 
                        <th>JUEVES</th> 
                        <th>VIERNES</th> 
                    </tr>
                    <xsl:apply-templates select="grupo/hora"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template select="grupo/hora">
        
    </xsl:template>
    <xsl:template select="dia_sem">
        <td>
            <xsl:attribute name="rowspan">
                    <xs:value-of select="//modulos/modulo[@codM=current()]/text()"/>
            </xsl:attribute>
            <xsl:value-of select="current()"/>
        </td>
        <td>
            <abbr>
                <xsl:attribute name="title">
                    <xsl:value-of select="//modulos/modulo@codM=current()/text()"/>
                </xsl:attribute>
                 <xsl:value-of select="current()"/>
            </abbr>
            <br/>
            <xsl:variable name="listaProfesores" select="//asignatura[@codM=current()]/@codProfesor"/>
            <abbr>
                <xsl:attribute name="title">
                    <xsl:apply-templates select="//profesores/profesor[contains($listaProfesores,@codP)]"/>
                </xsl:attribute>
                <xsl:value-of select="$listaProfesores"/>
            </abbr>
        </td>
    </xsl:template>
    <xsl:template match="profesor" mode="xxx">
        <xsl:if test="position()!=1"/>
        <xsl:text>, </xsl:text>
        <xsl:value-of select="text()"/>
    </xsl:template>

</xsl:stylesheet>
