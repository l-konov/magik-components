<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension" >	<xsl:template name="show_join">
		<xsl:param name="id" />
		<!-- The basic start of the name of the href link -->
		<xsl:param name="join_href"/>
		<!-- The value used to locate the second part of the href link -->
		<xsl:param name="join_href_tag"/>	
		<!-- The value used to locate the # anchor part of the href link -->
		<xsl:param name="join_anchor_tag"/>	
		<!-- the overall link is "join_href""value-of join_href_tag"".html#"value-of join_anchor_tag" -->
	
		<!-- The name of the property attribute to use for a value-of to display the join -->
		<xsl:param name="join_aspect"/>	


		<!-- These are used to find the actual join record by typeName=target_type and searching from join_locate-path -->			<xsl:param name="target_type"/>		
		<xsl:param name="join_locate_path"/>

		<!-- the value to put between each join record - default is <br> -->
		<xsl:param name="join_separator"/>
	
		<xsl:variable name="full_join_tag" select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName=$join_href_tag]"/>				
		<xsl:variable name="join_anchor_value" select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName=$join_anchor_tag]"/>				
		<a href="{$join_href}{$full_join_tag}.html#{$join_anchor_value}">
		<xsl:if test="$join_aspect!=''">	
			<xsl:value-of select="$join_locate_path[@typeName=$target_type and @identifier=$id]/property[@typeName=$join_aspect]"/>
		</xsl:if>		

		<xsl:if test="not(position()=last())">
			<xsl:if test="$join_separator=''"><br/></xsl:if>
			<xsl:value-of select="$join_separator"/>
		</xsl:if>
		</a>
	</xsl:template>
</xsl:stylesheet>