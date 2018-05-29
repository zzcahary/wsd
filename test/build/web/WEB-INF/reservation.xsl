<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Reservation</title>
            </head>
            <body>
                <div align = "left">
                    <table border = "1" width="100%">
                        <caption>
                            <h1>Reservation</h1>
                        </caption>
                        <tr>
                                <td align = "left">Title</td>
                                <td>Username</td>
                                <td>Email</td>
                            </tr>
                            
                        <xsl:for-each select="reservations/reservation">
                            <tr>
                                <td align = "left"><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="username"/></td>
                                <td><xsl:value-of select="email"/></td>
 
                            </tr>                               
                        </xsl:for-each>
                    </table>                      
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

