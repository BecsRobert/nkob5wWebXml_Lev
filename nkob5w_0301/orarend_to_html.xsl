<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                        <title>Órarend 2025</title>
                        <link rel="stylesheet" href="orarend.css"></link>
            </head>
            <body>
                <h1>Órarend 2025</h1>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Kurzus</th>
                            <th>Dátum</th>
                            <th>Nap</th>
                            <th>Időpont</th>
                            <th>Helyszín</th>
                            <th>Oktató</th>
                            <th>Szak</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="NKOB5W_orarend/ora">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="kurzus"/></td>
                                <td><xsl:value-of select="idopont/datum"/></td>
                                <td><xsl:value-of select="idopont/nap"/></td>
                                <td>
                                    <xsl:value-of select="idopont/tol"/>
                                    -
                                    <xsl:value-of select="idopont/ig"/>
                                </td>
                                <td><xsl:value-of select="helyszin"/></td>
                                <td><xsl:value-of select="oktato"/></td>
                                <td><xsl:value-of select="szak"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
