<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >
<xsl:template match="/swldy_auth_dump">	
<table>
<tr>
<th>Produced:</th>
<td>
<xsl:value-of select="@write_time"/>
</td>
</tr>
<tr>
<th>Source:</th>
<td>
<xsl:value-of select="@database_path"/>
</td>
</tr>
<tr>
<th>Writer:</th>
<td>
<xsl:value-of select="@writer"/>
</td>
</tr>
</table>
</xsl:template>

</xsl:stylesheet>