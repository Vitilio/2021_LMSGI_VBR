<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : europa2020.xsl
    Created on : 17 de junio de 2021, 8:46
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/eurocopa">
        <html>
            <head>
                <title>
                    <xsl:value-of select="concat('eurocopa',@anyo,'Víctor Blanco Rodrigo')"/>
                </title>
                <link rel="icon" type="image/x-icon" href="images/euro2020.ico"></link>    
            </head>
            <body>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/eurocopa',@anyo,'.jpg')"/>
                    </xsl:attribute>
                </img>
                <xsl:for-each select="//grupo">
                    <table>
                        <caption>
                            <h1>
                                <xsl:value-of select="concat('Grupo',' ',@id)"/>
                            </h1>
                        </caption>
                        <thead>
                            <tr>
                            <th>CLUB</th>
                            <th>PJ</th>    
                            <th>V</th>  
                            <th>E</th>  
                            <th>D</th>  
                            <th>GF</th>  
                            <th>GC</th>  
                            <th>DG</th>  
                            <th>pts</th>  
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <xsl:apply-templates select=""/> 
                            </tr>
                        </tbody>
                    </table>
                </xsl:for-each>
                <footer>
                    <p>
                        17 DE JUNIO DE 2021. REALIZADO POR VÍCTOR BLANCO RODRIGO
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//grupo/@id">
        <tr>
            <td>
              <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',//iniciales,'.png')"></xsl:value-of>
                    </xsl:attribute>
              </img>
            </td>
        </tr>
        <tr>
            <td>
              <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',//iniciales,'.png')"></xsl:value-of>
                    </xsl:attribute>
              </img>
            </td>
        </tr>
        <tr>
            <td>
              <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',//iniciales,'.png')"></xsl:value-of>
                    </xsl:attribute>
              </img>
            </td>
        </tr>
        <tr>
            <td>
              <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',//iniciales,'.png')"></xsl:value-of>
                    </xsl:attribute>
              </img>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
