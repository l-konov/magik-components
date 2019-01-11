<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:template name="show_object_editor">
		<xsl:param name="id"/>
		<xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_object_editor']/FeatureCollection[@typeName='sw_gis!case_object_editor']//Feature[@typeName='sw_gis!case_object_editor' and @identifier=$id]/property[@typeName='editor']"/>

	</xsl:template>
	<xsl:template name="show_object_trigger">
		<xsl:param name="id"/>
		<xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_object_trigger']/FeatureCollection[@typeName='sw_gis!case_object_trigger']/featureMember/Feature[@typeName='sw_gis!case_object_trigger' and @identifier=$id]/property[@typeName='method_name']"/>

	</xsl:template>
	<xsl:template name="show_object_properties">
		<xsl:param name="id"/>
		<xsl:param name="object_id"/>	
		<table border="1">
		<tr><th align="left">Record Exemplar:</th>
			<td>
			<xsl:value-of select="./property[@typeName='ex_name']"/>		
			</td>
		</tr>
		<tr><th align="left">Insert Trigger:</th>
			<td>
			<xsl:call-template name="show_object_trigger">
				<xsl:with-param name="id">
				 	<xsl:value-of select=".//swldy:relationshipProperty[@typeName='trigger_recs']/Feature[@typeName='sw_gis!case_object_trigger'and contains(@identifier,'insert')]/@identifier"/>
					</xsl:with-param>
				</xsl:call-template>
			</td>
		</tr>
		<tr><th align="left">Update Trigger:</th>
		<td>
			<xsl:call-template name="show_object_trigger">
				<xsl:with-param name="id">
				 	<xsl:value-of select=".//swldy:relationshipProperty[@typeName='trigger_recs']/Feature[@typeName='sw_gis!case_object_trigger' and contains(@identifier,'update')]/@identifier"/>
					</xsl:with-param>
				</xsl:call-template>
			</td>
		</tr>
		<tr><th align="left">Delete Trigger:</th>
		<td>
			<xsl:call-template name="show_object_trigger">
				<xsl:with-param name="id">
				 	<xsl:value-of select=".//swldy:relationshipProperty[@typeName='trigger_recs']/Feature[@typeName='sw_gis!case_object_trigger'and contains(@identifier,'delete')]/@identifier"/>
					</xsl:with-param>
				</xsl:call-template>
			</td>
		</tr>
		<tr><th align="left">Visible Fields:</th>
			<td>
				<table>
				<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_object_visible_field']/FeatureCollection[@typeName='sw_gis!case_object_visible_field']/featureMember/Feature[@typeName='sw_gis!case_object_visible_field']/property[@typeName='id' and string(.)=$object_id]/../*">
				    
				    <xsl:if test="@typeName='function'"><tr><th colspan="2"><xsl:value-of select="."/></th></tr></xsl:if>
				    <xsl:if test="@typeName='visible_case_fields'">	
					<xsl:for-each select="./Feature">
						<xsl:variable name="field_id" select="@identifier"/>
						<tr><td> </td><td><xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[@identifier='sw_gis!case_field']/featureMember[@typeName='sw_gis!case_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$field_id]/property[@typeName='e_name']"/></td></tr>
					</xsl:for-each>
				    </xsl:if>
				</xsl:for-each>
				</table>
			</td>
		</tr>		
		</table>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\..\..\..\..\..\..\..\..\temp\case\case_dump.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->