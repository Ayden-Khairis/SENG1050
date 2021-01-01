<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
      <body>
        <h2>Fruit Farms</h2>
        <table border="1">
        	<tr bgcolor="#ff0000">
        		<th>Goods Type</th>
        		<th>Farm Name</th>
        		<th>Farm Owner</th>
        		<th>Head of Goods Picking</th>
        		<th>Head of Packaging</th>
        		<th>Image</th>
      		  <th>Image</th>
      		  <th>Farm Description</th>
            <th>URL</th>
            <th>Address</th>
            <th>Phone Number</th>
            <th>Minimum Delivery Price</th>
            <th>Delivery Fee</th>
            <th>Delivery Time</th>
            <th>Goods Name</th>
            <th>Image</th>
            <th>Goods Amount</th>
        	</tr>

        	<xsl:for-each select="Farms/Farm">
        		<tr>
        			<td><xsl:value-of select="goodsType"/></td>
        			<td><xsl:value-of select="farmName"/></td>
        			<td><xsl:value-of select="farmEmployees/owner"/></td>
        			<td><xsl:value-of select="farmEmployees/headOfGoodsPicking"/></td>
        			<td><xsl:value-of select="farmEmployees/headOfPackaging"/></td>
        			<td>
                <img alt="Farm Logo" name="Farm Logo" height="80" width="80">
                  <xsl:attribute name="src">
                    <xsl:value-of select="farmLogo/image"/>     
                  </xsl:attribute>      
                </img>
              </td>
        			<td>
                <img alt="Farm Photo" name="Farm Photo" height="80" width="80">
                  <xsl:attribute name="src">
                    <xsl:value-of select="farmPicture/image"/>     
                  </xsl:attribute>      
                </img>
              </td>
        			<td><xsl:value-of select="farmDescription"/></td>
              <td><xsl:value-of select="URL"/></td>
              <td><xsl:value-of select="address"/></td>
              <td><xsl:value-of select="phoneNumber/number"/></td>
              <td><xsl:value-of select="delivery/minimumPrice"/></td>
              <td><xsl:value-of select="delivery/deliveryFee"/></td>
              <td><xsl:value-of select="delivery/deliveryTime"/></td>
              <td><xsl:value-of select="goods/goodsName"/></td>
              <td>
                <img alt="Goods Photo" name="Goods Photo" height="80" width="80">
                  <xsl:attribute name="src">
                    <xsl:value-of select="goods/goodsPicture/image"/>
                  </xsl:attribute>
                </img>
              </td>
              <td><xsl:value-of select="goods/goodsAmount"/></td>
        		</tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>