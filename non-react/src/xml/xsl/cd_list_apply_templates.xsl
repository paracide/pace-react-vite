<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- <output> Tells the processor to output as HTML. If this is
         done through PHP/ASP/etc then the user should see indented
         HTML source code if indent="yes" is present -->
    <xsl:output method="html" indent="yes" encoding="utf-8"/>
    <!-- "Match" the entire XML document, using the "document root" (/) -->
    <xsl:template match="/">
        <!-- Create base HTML Tags -->
        <html>
            <head>
                <title>List of CD's from XML</title>

                <style type="text/css">
                    /* Linking Google Web Fonts using @import. In January 2024,
                    the Google LINK code is not working, due to too many
                    illegal characters. Using @import worked better, but
                    we had to convert the ampersand character as &amp;
                    Google also omits the SEMI-COLON at the end of the code,
                    which will cause problems with the BODY rule. */
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
                    td ol li{
                    margin-bottom: 0.4em;
                    }

                    tr:nth-child(even){
                    background-color: #ddd;
                    }

                    tr:nth-child(odd){
                    background-color: #f4f4f4;
                    }

                    span.yearview{
                    font-style: italic;
                    font-size: 0.8em;
                    color: #00b;
                    }
                </style>
            </head>

            <body>
                <h1>List of CD's (from XML)</h1>

                <table>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Songs</th>
                    </tr>
                    <!-- Start looping here -->

                    <!-- We will create the same results as the previous file
                         which used <xsl:for-each>, but this time we will use
                         a different method with XSL templates. -->
                    <!-- We want to "insert" the "cd" template contents right
                         here. You can use <xsl: apply-templates />, but this actually
                         tells the processor to apply EVERY extra template in
                         the document. To apply a *specific* template, we use
                         the "select" attribute. -->
                    <xsl:apply-templates select="cd_info/cd"/>

                </table>

            </body>
        </html>

    </xsl:template>

    <!-- "Extra" templates go here -->

    <!-- These are "extra" templates that we can use in our document. -->
    <!-- This template will match every "cd" element. -->
    <!-- Don't use XPATH here, just "match" the element you want to loop through.
         This template does not "run" unless we specifically tell it to. -->

    <xsl:template match="cd">
        <tr>
            <td>
                <xsl:value-of select="title"/>
            </td>
            <td>
                <xsl:value-of select="artist"/>
            </td>
            <td>
                <ol>
                    <xsl:apply-templates select="song"/>
                </ol>
            </td>
        </tr>
    </xsl:template>

    <!-- Template for SONGS -->
    <xsl:template match="song">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>
</xsl:stylesheet>







