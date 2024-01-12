<?xml version="1.0" encoding="UTF-8" ?>

<xls:stylesheet xmlns:xls="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xls:output method="html" indent="yes" encoding="UTF-8"/>

    <xls:template match="/">
        <html>
            <head>
                <title>Arthur's CDs From XML</title>
                <link rel="stylesheet" href="style.css"/>
            </head>

            <body>
                <h1>List of CD</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Songs</th>
                    </tr>
                    <xsl:for-each select="cd_info/cd">
                        <tr>
                            <td>
                                <xls:value-of select="title"/>
                                <span class="year-view">
                                    (<xls:value-of select="year"/>)
                                </span>
                            </td>
                            <td>
                                <xls:value-of select="artist"/>
                            </td>
                            <td>
                                <ol>
                                    <xls:for-each select="song">
                                        <li>
                                            <xls:value-of select="."/>
                                        </li>
                                    </xls:for-each>
                                </ol>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xls:template>
</xls:stylesheet>
