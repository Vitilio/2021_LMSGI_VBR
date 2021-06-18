<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 29 de abril de 2021, 8:57
    Author     : Víctor Blanco
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/listatickets">
        <html>
            <head>
                <title>02 XSLT Tickets Víctor Blanco Rodrigo</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Víctor Blanco Rodrigo"/>
                <meta name="application-name" content="Practica 2 XSLT"/>
                <meta name="description" content="Información y listado de tickets"/>
                <meta name="keywords" content="tickets,producto,precio,total,xslt,xml"/>
                <meta name="robots" content="index, follow"/>
                <link type="text/css" rel="stylesheet" href="02.css"/>
                <link type="image/x-icon" rel="icon" href="../../favicon.ico"/>
            </head>
            <body>
                <h1>Información de tickets</h1>
                <h2>Listado de tickets</h2>
                <xsl:apply-templates select="ticket"/>
                <p>NUMERO DE TICKETS: 2</p>
                <p>TOTAL DE TICKETS: 3.6</p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ticket">
        <div>
            Tickets: <xsl:value-of select="numero"/>
        </div>
        <table>
            <tr>
                <td>Producto</td>
                <td>Precio</td>
            </tr>
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="precio"/></td>
            </tr>
            <tr>
                <td>total</td>
                <td><xsl:value-of select="total"/></td>
            </tr>
        </table>
        <div>
            FECHA DEL TICKET <xsl:value-of select="fecha"/>
        </div>
    </xsl:template>
</xsl:stylesheet>
