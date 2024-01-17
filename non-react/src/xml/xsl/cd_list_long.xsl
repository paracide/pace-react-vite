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

                    .brightgreen{
                    color:#0a0;
                    font-size:1.2rem;
                    }

                </style>
            </head>

            <body>
                <h1>List of CD's (from XML)</h1>
                <xsl:variable name="mylink" select="cd_info/link_url"/>
                <p>
                    <a href="{$mylink}" target="_blank" ref="noopener">
                        My Music
                    </a>
                </p>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Songs</th>
                    </tr>
                    <!-- Row with data from the XML file -->
                    <!-- Start looping through the CD elements. Make a TR for
                         each one. -->
                    <!-- We need to BUILD the XPATH through all the parent
                         elements. We want to get to /cd_info/cd, but we
                         already used the "/" in template. So now, we exclude
                         the "/" and go to the next part of the XPATH.

                         It can be helpful to first construct the full,
                         absolute XPATH as a REFERENCE so we know what it
                         should look like. So for the title, we would need

                         /cd_info/cd/title.

                         We will build this below. -->

                    <!-- Start looping here -->
                    <xsl:for-each select="cd_info/cd">
                        <!-- At this point, "cd" is our CONTEXT NODE. This is
                             where we currently are in the XML document -->

                        <!-- SORT always right after a loop, in this case for-each-->
                        <xsl:sort select="artist"/>
                        <!-- Secondary sorts can be accomplished by simply using
                             another sort tag.-->
                        <xsl:sort select="year" order="descending"/>

                        <tr>
                            <td>
                                <xsl:value-of select="position()"/>.
                                <xsl:choose>
                                    <xsl:when test="title/@remastered ='yes' ">
                                        <span class="brightgreen">
                                            <xsl:value-of select="title"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="title"/>
                                    </xsl:otherwise>
                                </xsl:choose>

                                <span class="yearview">
                                    (<xsl:value-of select="year"/>)
                                </span>
                            </td>
                            <td>
                                <xsl:value-of select="artist"/>
                            </td>
                            <td>
                                <!-- Loop through all the <song> tags in the current CD -->
                                <ol>
                                    <xsl:for-each select="song">
                                        <li>
                                            <xsl:value-of select="."/>
                                        </li>
                                    </xsl:for-each>
                                </ol>
                            </td>
                        </tr>
                        <!-- Stop looping here -->

                    </xsl:for-each>
                </table>


            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
