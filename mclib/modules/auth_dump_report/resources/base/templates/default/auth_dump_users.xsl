<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >
	<xsl:import href="show_joins.xsl"/>
	<xsl:output method="html" />
	<xsl:template match="/">
	<html>
	<body>
	<xsl:for-each select=".//FeatureCollection[@identifier='auth!user']">
	<table border="1">
	<tr><th colspan="7">Users</th></tr>
	<tr><th>Name</th><th>Full Name</th><th>status</th><th>Bad Logins</th>
            <th>Password Time</th><th>Groups</th><th>Reference User</th></tr>
		<xsl:for-each select="descendant::Feature[@typeName='auth!user']">
		    <tr>	
			<td>
				<xsl:variable name="full_join_tag" select="descendant::property[@typeName='name']"/>
				<!-- a href="user_{$full_join_tag}.html" name="{$full_join_tag}}"-->
				<a name="{$full_join_tag}">
				<xsl:value-of select="descendant::property[@typeName='name']"/>
				</a>
                       </td>
			<td><xsl:value-of select="descendant::property[@typeName='fullname']"/></td>
			<td><xsl:value-of select="descendant::property[@typeName='status']"/></td>	
			<td><xsl:value-of select="descendant::property[@typeName='bad_logins']"/></td>		
			<td><xsl:value-of select="descendant::property[@typeName='password_time']"/></td>		
			<td>
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='groups']/Feature">
				<xsl:call-template name="show_join">
				    <xsl:with-param name="join_href">group_</xsl:with-param>
				    <xsl:with-param name="join_href_tag">name</xsl:with-param>	
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
			<td>
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='reference_user']/Feature">
				<xsl:value-of select="@identifier"/>	
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