<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>xsl:<xsl:value-of select="title"/>
                </title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <header>
                    <h1 class="gradient-anime">Yan Game Network - Top Score Games</h1>
                    <nav>
                        <div>
                            <a href="index.html" class="arrow">
                                <img src="imgs/arrow-l.svg"/>
                            </a>
                        </div>
                        <xsl:apply-templates select="site/menus/game"/>
                        <div>
                            <a href="index.html" class="arrow">
                                <img src="imgs/arrow-r.svg"/>
                            </a>
                        </div>
                    </nav>
                </header>

                <main>
                    <div class="contents">
                        <xsl:apply-templates select="site/contents/content"/>
                    </div>
                    <h2>Latest News</h2>
                    <div class="news">
                        <xsl:apply-templates select="site/articles/article"/>
                    </div>
                </main>

                <footer>
                    <div>
                        Powered by
                        <a href="https://www.w3.org/Style/XSL/">XSLT</a>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="game">
        <div class="game-card">
            <a href="{url}" target="_blank">
                <img src="imgs/{img}" class="game-background" alt="{name}"/>
                <div class="game-score">
                    <xsl:value-of select="score"/>
                </div>
            </a>
        </div>

    </xsl:template>
    <xsl:template match="article">
        <article>
            <div class="news-card">
                <img src="imgs/{img}" alt="News Image" class="news-image"/>
                <div class="news-content">
                    <h3 class="news-title">
                        <a href="{url}" target="_blank">
                            <xsl:value-of select=" title"/>
                        </a>
                    </h3>
                    <p class="news-summary">
                        <xsl:value-of select="summary"/>
                        <a class="read-more" target="_blank" href="{url}">More
                        </a>
                    </p>
                    <p class="news-url">
                        <xsl:value-of select="url"/>
                    </p>
                </div>
            </div>
        </article>
    </xsl:template>

    <xsl:template match="content">
        <div class="content">
            <p>
                <xsl:value-of select="."/>
            </p>
        </div>
    </xsl:template>

</xsl:stylesheet>


