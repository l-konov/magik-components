<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:output method="html" />
	<xsl:template match="/">
	<html>
	<head></head>
	<body>
	<xsl:for-each select="//featureMember[@typeName='Case Manifold']//Feature[@typeName='sw_gis!case_manifold']">
		<xsl:sort select="./property[@typeName='name']"/>
		<xsl:variable name="mname" select="./property[@typeName='name']"/>
		<xsl:variable name="link" select="concat('manifold_',$mname,'.html')"/>
		<a target="data_frame" href="{$link}">
		<xsl:value-of select="./property[@typeName='name']"/><br/>
		</a>
	</xsl:for-each>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
