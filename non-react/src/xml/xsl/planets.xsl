<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Planets</title>
                <style>

                    @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,700;1,400&amp;display=swap");

                    body{
                    font-family: Poppins, Tahoma, sans-serif;
                    }
                    table{
                    border: 1px solid #000;
                    border-collapse: collapse;
                    width: 600px;
                    }
                    td,th{
                    padding: 6px;
                    border: 1px solid #000;
                    vertical-align: top;
                    }
                    th{
                    background-color: #333;
                    color: #fff;
                    font-weight: 700;
                    font-weight: 700;
                    }
                </style>
            </head>
            <body>
                <h1>Planets</h1>
                <p>
                    <a href="{planets/link_address}">
                        <xsl:value-of select="planets/link_text"/>
                    </a>
                </p>
                <table>
                    <tr>
                        <th>name</th>
                        <th>moons</th>
                        <th>diameter</th>
                        <th>year_length</th>
                        <th>day_length</th>
                    </tr>

                    <xsl:apply-templates select="planets/planet">
                        <xsl:sort select="@position"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="planet">
        <tr>
            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="moons"/>
            </td>
            <td>
                <xsl:value-of select="diameter"/>
            </td>
            <td>
                <xsl:value-of select="year_length"/>
            </td>
            <td>
                <xsl:value-of select="day_length"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
