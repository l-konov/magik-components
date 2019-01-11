<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:output method="html" />
	<xsl:param name="identifier"/>
	<xsl:param name="last_z_element"/>
	<xsl:template match="/">
		<html>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='Case Field Type']/FeatureCollection[@identifier='sw_gis!case_field_type']/featureMember/Feature[@typeName='sw_gis!case_field_type' and @identifier=$identifier]">
		<head>
			<link rel="stylesheet" type="text/css" href="global.css" />

			<title>Manifold<xsl:value-of select=".//property[@typeName='name']"/></title>
		</head>
		<body>

			<table width="100%" border="1">
			<tr>
				<th align="left" class="big-bold">Type :</th>
				<th class="big-bold" align="left">
				<xsl:value-of select=".//property[@typeName='name']"/>
				</th>
				<td rowspan="2">
	   		        <xsl:value-of select="./property[@typeName='text']"/>
			        </td>
		        </tr>
			<tr>    <th>Storage Class</th>
				<td><xsl:value-of select="./property[@typeName='storage_class']"/></td>
			</tr>
			<tr>
				<th>Enumerated?</th>
				<td><xsl:value-of select="./property[@typeName='enumerated?']"/></td>
			</tr>
			<tr>
				<th>Scalar?</th>
				<td><xsl:value-of select="./property[@typeName='scalar?']"/></td>
			</tr>
			<tr>
				<xsl:if test="./property[@typeName='enumerated?']='True'">
					<th>Mappings:</th>
					<td>
						<xsl:call-template name="show_enumerator">
							<xsl:with-param name="id" select="./swldy:relationshipProperty[@typeName='enumerator']/Feature/@identifier"/>
						</xsl:call-template>
					</td>
				</xsl:if>
			</tr>
			<tr>
				<xsl:if test="./property[@typeName='enumerated?']='True'">
					<th>Domains:</th>
					<td>
						<xsl:call-template name="show_enumerator_domains">
							<xsl:with-param name="field_type_name" select="./property[@typeName='name']"/>
						</xsl:call-template>
					</td>
				</xsl:if>
			</tr>
			<tr>
				<xsl:if test="./property[@typeName='enumerated?']='True'">
					<th>Where Used:</th>
					<td>
						<xsl:call-template name="show_enumerator_where_used">
							<xsl:with-param name="field_type_name" select="./property[@typeName='name']"/>
						</xsl:call-template>
					</td>
				</xsl:if>
			</tr>
			</table>
		</body>
	 	</xsl:for-each>
		</html>
	</xsl:template>
	
	<xsl:template name="show_enumerator_domains">
		<table>
		<xsl:for-each select="./swldy:relationshipProperty[@typeName='domains']/Feature">
			<xsl:call-template name="show_domain"/>
		</xsl:for-each>
		</table>
	</xsl:template>
	<xsl:template name="show_domain">
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='Case Field Type Domain']/FeatureCollection[@identifier='sw_gis!case_domain']/featureMember[@typeName='sw_gis!case_domain']/Feature[@identifier=current()/@identifier]">
			<xsl:variable name="enum_name" select="./property[@typeName='ft_name']"/>
			<tr>
				<th align="left">
					<xsl:value-of select="./property[@typeName='name']"/>
				</th>
				<th>(
					<xsl:value-of select="./property[@typeName='type']"/>)
				</th>
			</tr>
			<xsl:for-each select="./swldy:relationshipProperty[@typeName='value_recs']/Feature">
				<tr>
				<td></td><td>
				<xsl:variable name="val_rec_id" select="./@identifier"/>
				<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!domain_value_set']/FeatureCollection[@identifier='sw_gis!domain_value_set']/featureMember/Feature[@typeName='sw_gis!domain_value_set' and @identifier=$val_rec_id]">
					<xsl:variable name="val_id" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_enumerator']/FeatureCollection[@identifier='sw_gis!case_enumerator']/featureMember/Feature/property[@typeName='name' and string(.)=$enum_name]/../property[@typeName='val_id']"/>
					<xsl:variable name="map_val" select="./property[@typeName='map_val']"/>
					<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_enumerator_value']/FeatureCollection[@identifier='sw_gis!case_enumerator_value']/featureMember/Feature/property[@typeName='val_id' and string(.)=$val_id]/../property[@typeName='map_val' and string(.)=$map_val]/..">
						<xsl:value-of select="./property[@typeName='value']"/>
					</xsl:for-each>
				</xsl:for-each>
				</td>
				</tr>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="show_enumerator_where_used">
		<xsl:param name="field_type_name"/>
		<table border="4" cellpadding="5" cellspacing="5">
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_ft']/FeatureCollection[1]/featureMember/Feature[1]/property[@typeName='field_type' and string(.)=$field_type_name]/..">
			<xsl:variable name="field_ft_id" select="./@identifier"/>
			<xsl:variable name="field_id" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[1]/featureMember/Feature[1]/*[@typeName='field_type_rec' and local-name()='relationshipProperty' and namespace-uri()='http://www.gesmallworld.com/gml_extension']/Feature[@identifier=$field_ft_id]/../../@identifier"/>
			<xsl:variable name="field_name" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[1]/featureMember/Feature[1]/*[@typeName='field_type_rec' and local-name()='relationshipProperty' and namespace-uri()='http://www.gesmallworld.com/gml_extension']/Feature[@identifier=$field_ft_id]/../../property[@typeName='e_name']"/>
			<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[1]/*[@typeName='fields' and local-name()='relationshipProperty' and namespace-uri()='http://www.gesmallworld.com/gml_extension']/Feature[@identifier=$field_id]/../..">
				<tr>
					<td>
						<xsl:variable name="mname" select="./property[@typeName='name']"/>
						<xsl:variable name="link" select="concat('object_',$mname,'.html')"/>
						<a target="data_frame" href="{$link}">
							<xsl:value-of select="./property[@typeName='e_name']"/>
						</a>
					</td>
					<td>
						<xsl:variable name="flink" select="concat($link,'#',$field_id)"/>
						<a target="data_frame" href="{$flink}">
						<xsl:value-of select="$field_name"/>
						</a>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:for-each>
		</table>
	</xsl:template>
	<xsl:template name="show_enumerator">
		<xsl:param name="id"/>
		<table border="3">
		<tr><th align="left">Mappings</th><th align="left">Value</th></tr>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_enumerator']/FeatureCollection[@identifier='sw_gis!case_enumerator']/featureMember[@typeName='sw_gis!case_enumerator']/Feature[@identifier=$id]">		
			<xsl:for-each select="./swldy:relationshipProperty[@typeName='field_vals']/Feature">
				<xsl:variable name="enum_val" select="@identifier"/>
				<tr>
				<td>
				<xsl:value-of select="/mclib_xsl_report/featureMember/FeatureCollection/featureMember[@typeName='sw_gis!case_enumerator_value']/Feature[@identifier=$enum_val]/property[@typeName='map_val']"/>
				</td>
				<td>
				<xsl:value-of select="/mclib_xsl_report/featureMember/FeatureCollection/featureMember[@typeName='sw_gis!case_enumerator_value']/Feature[@identifier=$enum_val]/property[@typeName='value']"/>
				</td>
				</tr>
			</xsl:for-each>
		</xsl:for-each>
		</table>
		<br/>
		<xsl:choose>
		    <xsl:when test="/mclib_xsl_report/extensible_enumerator_details/enumerator[@name=$last_z_element]">
			<b>Extensible Enumerators</b>
			<table border="3">
			    <tr><th align="left">Mappings</th><th align="left">Value</th><th align="left">Found in dataset(s)</th></tr>
			    <xsl:for-each select="/mclib_xsl_report/extensible_enumerator_details/enumerator[@name=$last_z_element]/enumerator_value">
				<tr><td><xsl:value-of select="@map_val"/></td><td><xsl:value-of select="@value"/></td><td><xsl:value-of select="@datasets"/></td></tr>
			    </xsl:for-each>
			</table>
		    </xsl:when>
		    <xsl:otherwise>
			<b>No Extensible Enumerators Defined</b>
		    </xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Actual default Boundary" userelativepaths="yes" externalpreview="no" url="..\..\..\..\..\..\..\..\..\..\temp\case\case_dump.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="2" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><parameterValue name="identifier" value="'swrefVrecordVdatasetZcaseVcollectionZsw_gis$0021case_field_typeVkeysZactual_default_boundary_domain'"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->