<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 10 de junio de 2021, 8:43
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/mysqldump/database">
        <html>
            <head>
                <title>Examen 3ªEv Víctor Blanco Rodrigo</title>
                <link type="text/css" rel="stylesheet" href="css/estilo.css"/>
            </head>
            <body>
                <h1>
                   BASES DE DATOS: BDDepartamentos/>
                </h1>
                <h2>
                    Tabla:DEPART
                </h2>
                <table>
                    <thead>
                        <tr>
                            <th>
                                <th>TDEPT_NO</th>
                                <th>DNOMBRE</th>
                                <th>LOC</th>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="table_data[@name='DEPART']/row">
                            <tr>
                                <td>
                                    <xsl:value-of select="field[@name='TDEPT_NO']"/>
                                </td>
                                <td>
                                    <xsl:value-of select="field[@name='DNOMBRE']"/>
                                </td>
                                <td>
                                    <xsl:value-of select="field[@name='LOC']"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <h2>Tabla:EMPLE</h2>
                <table>
                    <tr>
                        <th>EMP_NO</th>
                        <th>APELLIDO</th>
                        <th>OFICIO</th>
                        <th>DIR</th>
                        <th>FECHA_aLT</th>
                        <th>SALARIO</th>
                        <th>COMISION</th>
                        <th>DEPT_NO</th>
                    </tr>
                    <xsl:for-each select="table_data[@name='EMPLE']/row">
                        <tr>
                            <td>
                                <xsl:value-of select="field[@name='EMP_NO']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='APELLIDO']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='OFICIO']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='DIR']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='FECHA_aLT']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='SALARIO']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='COMISION']"/>
                            </td>
                            <td>
                                <xsl:value-of select="field[@name='DEPT_NO']"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <footer>
                    <div>Realizado por Víctor Blanco Rodrigo</div>
                </footer>  
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
