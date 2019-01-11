<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >
	<xsl:import href="show_joins.xsl"/>
	<xsl:output method="html" />
	<xsl:template match="/">
	<html>
	<head>
		<title>Auth Groups</title>
	</head>
	<body>
	<xsl:for-each select=".//featureMember[@typeName='Group']">
	<table width="100%" border="1">
	<tr><th colspan="5">Groups</th></tr>
	<tr><th>Name</th><th>Description</th><th>Rights</th><th>Alternative Access</th>
            <th>Table Access<br/>Records</th><th>Total<br/>Users</th></tr>
		<xsl:for-each select="descendant::Feature[@typeName='auth!group']">
		    <tr>	
			<td>
				<xsl:variable name="full_join_tag" select="descendant::property[@typeName='name']"/>				
				<a href="group_{$full_join_tag}.html" name="{@identifier}">
				<xsl:value-of select="descendant::property[@typeName='name']"/>
				</a>
                       </td>
			<td><xsl:value-of select="descendant::property[@typeName='description']"/></td>
			<td>
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='rights']/Feature">
				<xsl:call-template name="show_join">
				    <xsl:with-param name="join_href">rights</xsl:with-param>
				    <xsl:with-param name="join_locate_path" select="//FeatureCollection[@typeName='Right']//Feature"/>
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
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='alternative_access_records']/Feature">
				<xsl:call-template name="show_join">
				    <xsl:with-param name="join_href">alternative_access</xsl:with-param>
				    <xsl:with-param name="join_locate_path" select="//FeatureCollection[@typeName='auth!alternative_group_access']//Feature"/>
				    <xsl:with-param name="join_aspect">access</xsl:with-param>
				    <xsl:with-param name="target_type">
					<xsl:value-of select="@typeName"/>
				    </xsl:with-param>
				    <xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
				    </xsl:with-param>   

<xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
				    </xsl:with-param>
				</xsl:call-template>
			</xsl:for-each>
			</td>

			<td align="center"> 
			<xsl:value-of select=".//swldy:relationshipProperty[@typeName='table_access_records']/@count"/>
			</td>
			<td align="center"> 
			<xsl:value-of select=".//swldy:relationshipProperty[@typeName='users']/@count"/>
			</td>
			</tr>
		</xsl:for-each>
	</table>
	</xsl:for-each>	
	</body>
	</html>
	</xsl:template>
	<xsl:template name="show_group_table">
		<xsl:param name="id" />
		<xsl:param name="join_href"/>
		<xsl:param name="join_aspect"/>	
		<xsl:param name="join_template"/>				
		<xsl:param name="target_type"/>		
		<xsl:param name="join_locate_path"/>
		<xsl:param name="join_separator"/>			
		<a href="{$join_href}#{$id}">
		<xsl:if test="$join_aspect!=''">	
			<xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName=$join_aspect]"/>
		</xsl:if>		
		<xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName='table_name']"/>:
		  <xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName='predicate_text']"/>

		<xsl:if test="not(position()=last())">
			<xsl:if test="$join_separator=''"><br/></xsl:if>
			<xsl:value-of select="$join_separator"/>
		</xsl:if>
		</a>
	</xsl:template>
</xsl:stylesheet>