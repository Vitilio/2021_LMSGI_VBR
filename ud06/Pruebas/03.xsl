<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 15 de abril de 2020, 11:14
    Author     : amor
    Description:
       Manejar mútiples patrones o plantillas para obtener una pagina web
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
<!-- Creación de la estructura de la página web -->
    <xsl:template match="/alumnos">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>01-3 XSLT - Informacion de alumnos </title>
                <style>
                    table { width:100%;}
                    table, tr, td {border: 1px solid}
                </style>
            </head>
            <body>
                <table>
                    <thead>
                        <h1>Listado de alumnos</h1>
                    </thead>
                    <tbody>
                        <tr>
                    <xsl:apply-templates select="alumno"/>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Mostrar los datos de cada alumno -->
    <xsl:template match="alumno">
        <td>
            <xsl:value-of select="concat(nombre,' ',apellido)"/>
        </td>
        <td>
            <xsl:apply-templates select="direccion"/>
        </td>
    </xsl:template>
    
    <!-- Mostrar las direcciones de cada alumno -->
    <xsl:template match="direccion">
            Poblacion: <xsl:value-of select="poblacion"/> 
            Codigo Postal: <xsl:value-of select="cp"/>
    </xsl:template>

</xsl:stylesheet>
