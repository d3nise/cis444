<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match = "/">
             <html>
	                      <body style="text-align:center">
                         <h2 style="text-align:center; font-family: monospace; font-size: 20pt; font-style: bold; color:black;">CAR CATALOG</h2>
                          <table border="1" align="center" text-align="center">
                               <tr bgcolor="black">
                               <th style="text-align:center">MAKE</th>
                               <th style="text-align:center">MODEL</th>
                               <th style="text-align:center">YEAR</th>
                               <th style="text-align:center">COLOR</th>
                               <th style="text-align:center">ENGINE</th>
                               <th style="text-align:center">DOORS</th>
                               <th style="text-align:center">TRANSMISSION</th>
                               <th style="text-align:center">ACCESSORIES</th>
                               </tr>
                               <xsl:for-each select="catalog/car">
                                <tr bgcolor="#FFCCFF">
                                    <td>
                                         <xsl:value-of select="make"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="model"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="year"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="color"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="engine"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="number_of_doors"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="transmission_type"/>
                                    </td>
                                    <td>
                                         <xsl:value-of select="accessories"/>
                                    </td>
                               </tr>
                          </xsl:for-each>
			  </table>
			      </body>
             </html>
  </xsl:template>
</xsl:stylesheet>

<!--
  DENISE THUY VY NGUYEN =^.,.^=
  http://cis444.cs.csusm.edu/nguye208/cis444/HW/HW7/hw7_s4.xml
-->
