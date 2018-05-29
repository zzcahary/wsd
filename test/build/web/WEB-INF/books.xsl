<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Detail Sheet</title>
            </head>
            <body>
                <div align = "left">
                    <table border = "1" width="100%">
                        <caption>
                            <h1>Book Detail Sheet</h1>
                        </caption>
                        <tr>
                                <td align = "left">Title</td>
                                <td>Author</td>
                                <td>Category</td>
                                <td>Abstract</td>
                                <td>Username</td>
                                <td>ID</td>
                                <td>ISBN</td>
                                <td>Edition</td>
                                <td>Year</td>
                                <td>Publisher</td>
                                <td>Condition</td>
                                <td>Availability</td>
                            </tr>
                            
                        <xsl:for-each select="books/book">
                            <tr>
                                <td align = "left"><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="author"/></td>
                                <td><xsl:value-of select="category"/></td>
                                <td><xsl:value-of select="abstract"/></td>
                                <td><xsl:value-of select="username"/></td>
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="edition"/></td>
                                <td><xsl:value-of select="year"/></td>
                                <td><xsl:value-of select="publishername"/></td>
                                <td><xsl:value-of select="condition"/></td>
                                <td><xsl:value-of select="availability"/></td>
                            </tr>                
                        </xsl:for-each>
                    </table>                      
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
