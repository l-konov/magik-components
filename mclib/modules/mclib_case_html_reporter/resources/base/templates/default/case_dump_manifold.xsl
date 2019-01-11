<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:output method="html" />
	<xsl:param name="identifier"/>
	<xsl:template match="/">
		<html>
		<xsl:for-each select="//FeatureCollection[@identifier='sw_gis!case_manifold']//Feature[@typeName='sw_gis!case_manifold' and @identifier=$identifier]">
			<head>
			<title>Manifold<xsl:value-of select=".//property[@typeName='name']"/></title>
			</head>
			<body>
				<table width="100%" border="1">
				<tr><th align="left">Manifold :</th><th align="left">
					<xsl:value-of select=".//property[@typeName='name']"/>
				</th>
					<td rowspan="2">
					   <xsl:value-of select="./property[@typeName='text']"/>
					</td>
				</tr>
				<tr>
					<th>Where Used:</th>
					<td>
						<xsl:call-template name="show_manifold_where_used">
							<xsl:with-param name="id" select="./property[@typeName='number']"/>
						</xsl:call-template>
					</td>
				</tr>
				</table>
			</body>
	 	</xsl:for-each>
		</html>
	</xsl:template>
	<xsl:template name="show_manifold_where_used">
		<xsl:param name="id"/>
		<table border="2">
		<!-- get the Manifold - Field Relation Recs -->
		<xsl:variable name="manifold_id" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_manifold']/FeatureCollection[1]/featureMember/Feature[1]/property[@typeName='manifold' and string(.)=$id]/../@identifier"/>
		<!-- Now get the actual Case Field record -->
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[1]/featureMember/Feature[1]/swldy:relationshipProperty[@typeName='manifold_rec']/Feature[@identifier=$manifold_id]/../..">
			<tr>
			<td><!-- Object name -->
			<xsl:variable name="field_id" select="./@identifier"/>
			<xsl:variable name="object" select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[1]/*[@typeName='fields' and local-name()='relationshipProperty' and namespace-uri()='http://www.gesmallworld.com/gml_extension']/Feature[@identifier=$field_id]/../.."/>
			<xsl:variable name="mname" select="$object/property[@typeName='name']"/>
			<xsl:variable name="link" select="concat('object_',$mname,'.html')"/>
			<a target="data_frame" href="{$link}">
			<xsl:value-of select="$object/property[@typeName='e_name']"/>
			</a>
			</td>	
			<td><!-- Field External Name -->
			<xsl:variable name="flink" select="concat($link,'#',$field_id)"/>
			<a target="data_frame" href="{$flink}">
			<xsl:value-of select="./property[@typeName='e_name']"/>
			</a>
			</td>
			</tr>
		</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>