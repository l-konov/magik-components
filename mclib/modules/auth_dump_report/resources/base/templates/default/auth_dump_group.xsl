<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >
	<xsl:import href="show_joins.xsl"/>	
	<xsl:output method="html" />
	<xsl:param name="identifier"/>
	<xsl:template match="/">
	<html>
	<body>
	<xsl:for-each select="/swldy_auth_dump/featureMember[@typeName='Group']/FeatureCollection/featureMember/Feature[@typeName='auth!group' and @identifier=$identifier]">
	<table width="100%" border="1">
	<tr><th align="left">Group :</th><th>
		<a name="{$identifier}">
			<xsl:value-of select="descendant::property[@typeName='name']"/>
		</a>
	</th>
	<th align="right"><a href="groups.html">Back to Groups</a></th>
	</tr>
	<tr>
		<th>Description:</th>
		<th> <xsl:value-of select="descendant::property[@typeName='description']"/>
		</th>
	</tr>
	<tr>
	<th>Rights:</th>
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
	</tr>
	<tr>
	<th valign="top">Table Access:</th>	
			<td>
			<table border="2" width="100%">
			<tr><th>Table</th><th>Mode</th><th>Predicate</th></tr>
			<xsl:for-each select="descendant::swldy:relationshipProperty[@typeName='table_access_records']/Feature">
				<xsl:call-template name="show_group_table">
				    <xsl:with-param name="join_href">table_access.html</xsl:with-param>
				    <xsl:with-param name="join_locate_path" select="//FeatureCollection[@typeName='Group Table Access']//Feature"/>
				    <xsl:with-param name="join_aspect">auth!group_table</xsl:with-param>
				    <xsl:with-param name="target_type">
					<xsl:value-of select="@typeName"/>
				    </xsl:with-param>
				    <xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
				    </xsl:with-param>
				</xsl:call-template>
			</xsl:for-each>
			</table>
			</td>
	</tr>
	<tr>
	<th valign="top">Alternative Access:</th>	
			<td>
			<table width="100%">
			<tr><th width="20%" align="left">Access</th><th width="10%" align="left">Inheritable</th><th width="70%" align="left">Alternative Path</th></tr>
			<xsl:for-each select=".//swldy:relationshipProperty[@typeName='alternative_access_records']/Feature">
				<xsl:call-template name="show_alt_join">
				    <xsl:with-param name="target_type">
					<xsl:value-of select="@typeName"/>
				    </xsl:with-param>
				<xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
			    	</xsl:with-param>
				</xsl:call-template>
			</xsl:for-each>
			</table>
			</td>
	</tr>
	<tr>
	<th>Field Access:</th>	
			<td>
			<xsl:for-each select=".//swldy:relationshipProperty[@typeName='flists']/Feature">
				<xsl:sort select="@identifier"/>
				<xsl:call-template name="show_join">
				    <xsl:with-param name="join_href"></xsl:with-param>
				    <xsl:with-param name="join_locate_path" select="/swldy_auth_dump/featureMember[@typeName='auth!group_table_flist']/FeatureCollection[@typeName='auth!group_table_flist']/featureMember/Feature"/>
				    <xsl:with-param name="join_aspect">auth!group_table_flist</xsl:with-param>
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
	<tr>
	<th>Members:</th>	
	<td>
		<xsl:for-each select=".//swldy:relationshipProperty[@typeName='users']/Feature">
			<xsl:call-template name="show_join">
			    <xsl:with-param name="join_href">users</xsl:with-param>
			    <xsl:with-param name="join_anchor_tag">name</xsl:with-param>
			    <xsl:with-param name="join_locate_path" select="/swldy_auth_dump/featureMember[@typeName='User']/FeatureCollection[@identifier='auth!user']/featureMember/Feature"/>
			    <xsl:with-param name="join_aspect">name</xsl:with-param>
			    <xsl:with-param name="join_separator"> , </xsl:with-param>
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
		<xsl:if test="$join_aspect!=''">	
			<xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName=$join_aspect]"/>
		</xsl:if>		
		<tr>
		<td align="left"> <xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName='table_name']"/></td>
		<td align="center"><xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName='access']"/></td>
		 <td align="right"> <xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName='predicate_text']"/></td>
		</tr>
	</xsl:template>
	<xsl:template name="show_alt_join">
		<xsl:param name="id"/>		
		<xsl:param name="target_type"/>		
		<tr>
		<td align="left"> <xsl:value-of select="/swldy_auth_dump/featureMember[@typename='auth!alternative_group_access']/FeatureCollection[@typeName='auth!alternative_group_access']/featureMember/Feature[@typeName=$target_type and @identifier=$id]/property[@typeName='access']"/></td>
		 <td align="center"> <xsl:value-of select="/swldy_auth_dump/featureMember[@typename='auth!alternative_group_access']/FeatureCollection[@typeName='auth!alternative_group_access']/featureMember/Feature[@typeName=$target_type and @identifier=$id]/property[@typeName='inheritable?']"/></td>
		<td align="right	">
		<xsl:call-template name="show_alternative_path">
			    <xsl:with-param name="id" select="/swldy_auth_dump/featureMember[@typename='auth!alternative_group_access']/FeatureCollection[@typeName='auth!alternative_group_access']/featureMember/Feature[@typeName=$target_type and @identifier=$id]/property[@typeName='id']"/>
		</xsl:call-template>
		</td>
		</tr>
	</xsl:template>
	<xsl:template name="show_alternative_path">
		<xsl:param name="id" />
		<xsl:for-each select="/swldy_auth_dump/featureMember[@typeName='auth!alternative']/FeatureCollection[@identifier='auth!alternative']/featureMember[@typeName='auth!alternative']/Feature/property[@typeName='id' and string(.)=$id]">
			<xsl:variable name="parent_id" select="../property[@typeName='parent_id']/text()"/>
			<xsl:variable name="component" select="string(../property[@typeName='component_name'])"/>
			<xsl:if test="$parent_id != 0">
			<xsl:call-template name="show_alternative_path">
				<xsl:with-param name="id" select="$parent_id"/> 
			</xsl:call-template>
			<xsl:text>|</xsl:text>
			<xsl:copy-of select="$component"/>
		</xsl:if>
		<xsl:if test="$parent_id = 0">
		<xsl:text>[</xsl:text>
			<xsl:copy-of select="$component"/>
			<xsl:text>]</xsl:text>
		</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>