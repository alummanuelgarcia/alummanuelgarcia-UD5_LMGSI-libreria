<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal</h1>
        <table>
        <tr bgcolor="#19EC34">
            <th>ISBN</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>           
        </tr>
        <xsl:for-each select = "listalibros/libros[autor!='Mario Jimenez']">
        <xsl:sort select="precio"/>
        <tr>
            <td><xsl:value-of select ="ISBN"/></td>
            <td><xsl:value-of select ="titulo"/></td>
            <td><xsl:value-of select ="autor"/></td>
            <td><xsl:value-of select ="precio"/></td>
        </tr>
        </xsl:for-each>
        
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>