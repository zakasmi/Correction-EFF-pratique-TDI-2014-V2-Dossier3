<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>         Cheques </h2>
    <table border="2">
      <tr bgcolor="#acFF62">
        <th>Numero_Cheque</th>
        <th>Dtae_Emission</th>
<th>Montant</th>
<th>Url_Cheque</th>
<th>Code_Motif</th>
<th>CIN</th>
<th>Code_Banque</th>
<th>Numero_Magasin</th>
      </tr>
      <xsl:for-each select="DocumentElement/Cheques">
        <tr>
          <td><xsl:value-of select="Numero_Cheque"/></td>
          <td><xsl:value-of select="Dtae_Emission"/></td>
<td><xsl:value-of select="Montant"/></td>
<td><xsl:value-of select="Url_Cheque"/></td>
<td><xsl:value-of select="Code_Motif"/></td>
<td><xsl:value-of select="CIN"/></td>
<td><xsl:value-of select="Code_Banque"/></td>
<td><xsl:value-of select="Numero_Magasin"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>