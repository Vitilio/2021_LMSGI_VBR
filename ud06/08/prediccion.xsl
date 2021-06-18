<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : prediccion.xsl
    Created on : 13 de mayo de 2021, 9:12
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>  
    <!-- <xsl:include href="../lib/web.xsl"/>--> 

    <xsl:template match="/prediccion">
    
        <html>
            <head>
            <!--
                <xsl:call-template name="web">
                    <xsl:with-param name="titulo" select="'Victor Blanco Rodrigo'"/>
                    <xsl:with-param name="descripcion" select="'El tiempo de la semana'"/>
                </xsl:call-template> -->  
               
               <title>08.XSLT - VictorBlancoRodrigo </title>
            </head>
            <body>
                <h1>Predicción por municipios</h1>
                
                <table>
                    <caption>
                        <xsl:value-of select="concat('EL TIEMPO ',//nombre,' (',//provincia,')')"></xsl:value-of>
                    </caption>
                    <tr>
                        <td>Día</td>
                        <td>Prob. precip</td>
                        <td>Estado del cielo</td>
                        <td>Temperatura(ºC)</td> 
                        <td>Viento(km/h)</td> 
                    </tr>
                    <xsl:apply-templates select="//dia"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="dia">
        <tr>
            <td>
                <xsl:value-of select="@fecha"/>
            </td>
            <td>
                <xsl:value-of select="concat(prob_precipitacion,'%')"/>
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',estado_cielo,'.gif')"/>
                    </xsl:attribute>
                </img>
            </td>
            <td>
                <xsl:value-of select="concat(temperatura/minima,'/',temperatura/maxima)"/>
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',viento/direccion,'.gif')"/>
                    </xsl:attribute>
                </img>
                <xsl:value-of select="viento/velocidad"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>

<!--span-->
