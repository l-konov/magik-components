<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >
	<xsl:import href="show_joins.xsl"/>
	<xsl:output method="html" />
	<xsl:template match="/">
	<html>
	<body>
	<xsl:for-each select=".//featureMember[@typeName='Right']">
	<table width="100%" border="1">
	<tr><th colspan="5">Rights</th></tr>
	<tr><th>Name</th><th>Description</th><th>Groups</th>
		</tr>
		<xsl:for-each select="descendant::Feature[@typeName='auth!right']">
		    <tr>	
			<td>
				<xsl:variable name="full_join_tag" select="descendant::property[@typeName='name']"/>
				<a name="{$full_join_tag}">
				<xsl:value-of select="descendant::property[@typeName='name']"/>
				</a>
                       </td>
			<td><xsl:value-of select="descendant::property[@typeName='description']"/></td>
			<td>
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='groups']/Feature">
				<xsl:call-template name="show_join">
				    <xsl:with-param name="join_href">group_</xsl:with-param>
				    <xsl:with-param name="join_href_tag">name</xsl:with-param>	
				    <xsl:with-param name="join_anchor_tag"></xsl:with-param>	
				    <xsl:with-param name="join_locate_path" select="//FeatureCollection[@typeName='Group']//Feature"/>
				    <xsl:with-param name="join_aspect">name</xsl:with-param>
				    <xsl:with-param name="target_type">
					<xsl:value-of select="@typeName"/>
				    </xsl:with-param>
				    <xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
				    </xsl:with-param>
				</xsl:call-template>
			</xsl:for-each>
			</td>
			</tr>
		</xsl:for-each>
	</table>
	</xsl:for-each>	
	</body>
	</html>
	</xsl:template>	
</xsl:stylesheet>