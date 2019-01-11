<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:output method="html" />
	<xsl:template match="/">
	<html>
	<head><title>Case Object List</title></head>
	<body>
	<ul>
	<xsl:for-each select="//dataset_object_details/dataset_objects">
	     <xsl:sort select="./@dataset_name"/>
	     <xsl:if test="string(./object_group)!=''">
		     <li>
		     <span class="big-bold">
		     <xsl:value-of select="./@dataset_name"/>
        	     </span>
		     <ul>
		     <xsl:for-each select="./object_group">
		     	<xsl:sort select="./@name"/>
			<li>
			<xsl:value-of select="./@name"/>
	   			<ul>
			     	<xsl:for-each select="./case_object">
					<xsl:sort select="./@name"/>
					<xsl:variable name="o_name" select="./@name"/>
					<xsl:for-each select="//featureMember[@typeName='Case Object']//Feature[@typeName='sw_gis!case_object']/property[@typeName='name' and string(.)=$o_name]/..">
					<xsl:sort select="./property[@typeName='e_name']"/>
						<li>
						<xsl:variable name="mname" select="./property[@typeName='name']"/>
						<xsl:variable name="link" select="concat('object_',$mname,'.html')"/>
						<a target="data_frame" href="{$link}">
						<xsl:value-of select="./property[@typeName='e_name']"/><br/>
						</a>
						</li>
					</xsl:for-each>
				</xsl:for-each>	
				</ul>
			</li>
		     </xsl:for-each>
		     </ul>
		     </li>
	     </xsl:if>
	</xsl:for-each>
	</ul>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
