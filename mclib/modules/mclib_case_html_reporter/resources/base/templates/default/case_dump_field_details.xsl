<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:swldy="http://www.gesmallworld.com/gml_extension">
	<xsl:import href="case_dump_manifold_info.xsl"/>
	<xsl:template name="show_visible">
		<xsl:param name="id"/>
		<xsl:param name="object_id"/>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_object_visible_field']/FeatureCollection[@typeName='sw_gis!case_object_visible_field']/featureMember[@typeName='sw_gis!case_object_visible_field']/Feature[@typeName='sw_gis!case_object_visible_field']/property[@typeName='function' and string(.)='default']/../property[@typeName='id' and string(.)=$object_id]/../swldy:relationshipProperty[@typeName='visible_case_fields']/*[@identifier=$id]">
			<b>Y</b>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="show_field_type_link">
		<xsl:param name="id"/>
		<xsl:param name="table_name"/>
		<xsl:param name="property_name"/>
		<xsl:variable name="fname" select="/mclib_xsl_report/featureMember/FeatureCollection[@typeName=$table_name]/featureMember/Feature[@typeName=$table_name and @identifier=$id]/property[@typeName=$property_name]"/>
		<xsl:variable name="property_value" select="/mclib_xsl_report/featureMember/FeatureCollection[@typeName=$table_name]/featureMember/Feature[@typeName=$table_name and @identifier=$id]/property[@typeName=$property_name]"/>
		<xsl:choose>
			<xsl:when test="$table_name='sw_gis!case_field_ft'">
				<xsl:variable name="field_type" select="/mclib_xsl_report/featureMember/FeatureCollection[@identifier='sw_gis!case_field_type']/featureMember/Feature[@typeName='sw_gis!case_field_type']/property[@typeName='name' and string(.)=$property_value]"/>
				<xsl:choose>
					<xsl:when test="count($field_type)=0">
						<xsl:value-of select="$property_value"/>
					</xsl:when>
					<xsl:otherwise>
						<a href="field_type_{$fname}.html">
						<xsl:value-of select="$property_value"/>
						</a>
					</xsl:otherwise>
				</xsl:choose> 
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$property_value"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="show_mandatory">
		<xsl:param name="id"/>
		<xsl:param name="field_type"/>
		<xsl:variable name="mandatory"
			      select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_mandatory?']/FeatureCollection[@typeName='sw_gis!case_field_mandatory?']/featureMember/Feature[@typeName='sw_gis!case_field_mandatory?' and @identifier=$id]/property[@typeName='mandatory?']"/>
		<xsl:choose>
		    <!-- There are a few different ways that a 'mandatory' value can be defined. -->
		    <!-- See method case_field.mandatory? for details. -->
		    <!-- It is possible that no sw_gis!case_field_mandatory? exists for a field type. -->
		    <!-- In that case, if the field_type='physical', it is implied to be mandatory. -->
		    <!-- If the sw_gis!case_field_mandatory? DOES exist, then we use the explicit value for mandatory. -->
		    <xsl:when test="string-length($mandatory)=0 and $field_type='physical'">True</xsl:when>
		    <xsl:when test="string-length($mandatory)=0">False</xsl:when>
		    <xsl:otherwise>
			<xsl:value-of select="$mandatory"/>
		    </xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="show_priority">
		<xsl:param name="id"/>
		<xsl:variable name="priority" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_priority']/FeatureCollection[@typeName='sw_gis!case_field_priority']/featureMember/Feature[@typeName='sw_gis!case_field_priority' and @identifier=$id]/property[@typeName='priority']"/>
		<xsl:choose>
			<xsl:when test="string-length($priority)=0">Not Set</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$priority"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="show_unset">
		<xsl:param name="id"/>
		<xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_unset_value']/FeatureCollection[@typeName='sw_gis!case_field_unset_value']/featureMember/Feature[@typeName='sw_gis!case_field_unset_value' and @identifier=$id]/property[@typeName='unset_value']"/>
	</xsl:template>
	<xsl:template name="show_default">
		<xsl:param name="id"/>
		<xsl:value-of select="/mclib_xsl_report/featureMember[@typename='sw_gis_case_field_def_value']/FeatureCollection[@typeName='sw_gis!case_field_def_value']/featureMember/Feature[@typeName='sw_gis!case_field_def_value' and @identifier=$id]/property[@typeName='default_value']"/>
	</xsl:template>

	<xsl:template name="show_field_editor">
		<xsl:param name="id"/>
		<xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_editor']/FeatureCollection[@typeName='sw_gis!case_field_editor']/featureMember/Feature[@typeName='sw_gis!case_field_editor' and @identifier=$id]/property[@typeName='editor']"/>
	</xsl:template>

	<!-- Displays the triggers for the current field. The node for the field should be current when this is called -->
	<xsl:template name="show_field_trigger">
		<xsl:param name="trigger_type"/>
		<xsl:for-each select=".//swldy:relationshipProperty[@typeName='trigger_rec']/Feature[@typeName='sw_gis!case_field_trigger' and contains(@identifier,$trigger_type)]">
			<xsl:variable name="trigger_id" select="@identifier"/>
			<xsl:value-of select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_trigger']/FeatureCollection[@typeName='sw_gis!case_field_trigger']/featureMember[@typeName='sw_gis!case_field_trigger']/Feature[@typeName='sw_gis!case_field_trigger' and @identifier=$trigger_id]/property[@typeName='method_name']"/>
		</xsl:for-each>
	</xsl:template>

	<!-- Displays the manifold for thre current field. The node for the field should be current when this is called -->
	<xsl:template name="show_field_manifold">
		<xsl:choose>
			<xsl:when test="count(.//swldy:relationshipProperty[@typeName='manifold_rec']/Feature[@typeName='sw_gis!case_field_manifold'])=0">N/A</xsl:when>
			<xsl:otherwise>
				<xsl:for-each select=".//swldy:relationshipProperty[@typeName='manifold_rec']/Feature[@typeName='sw_gis!case_field_manifold']">
					<xsl:variable name="record_id" select="@identifier"/>
					<xsl:variable name="manifold_id" select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field_manifold']/FeatureCollection[@typeName='sw_gis!case_field_manifold']/featureMember/Feature[@typeName='sw_gis!case_field_manifold' and @identifier=$record_id]/property[@typeName='manifold']"/>
					<xsl:call-template name="show_manifold_name">
						<xsl:with-param name="manifold_id">
							<xsl:value-of select="$manifold_id"/>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="show_object_field_details">
		<xsl:param name="id"/>
		<xsl:param name="object_id"/>
		<xsl:param name="object_name"/>
		<xsl:for-each select=".//swldy:relationshipProperty[@typeName='fields']/Feature">
			<xsl:call-template name="show_geometry_field_properties">
				<xsl:with-param name="id">
					<xsl:value-of select="@identifier"/>
				</xsl:with-param>
				<xsl:with-param name="object_name">
					<xsl:value-of select="$object_name"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="show_geometry_field_properties">
		<xsl:param name="id"/>
		<xsl:param name="object_name"/>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[@typeName='sw_gis!case_field']/featureMember[@typeName='sw_gis!case_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$id]">
			<xsl:variable name="field_type" select="./property[@typeName='type']"/>
			<xsl:if test="$field_type='geometric'">
				<tr>
					<a name="{$id}"/>
					<th colspan="2">
						<xsl:value-of select="./property[@typeName='e_name']"/>
					</th>
				</tr>
				<tr>
					<th>Internal Name:</th>
					<td>
						<xsl:value-of select="./property[@typeName='name']"/>
					</td>
				</tr>
				<tr>
					<th>Geometry Type</th>
					<td>
						<xsl:call-template name="show_field_type_link">
							<xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='geometry_type_rec']/Feature[@typeName='sw_gis!case_field_geometry_type']/@identifier"/>
							</xsl:with-param>
							<xsl:with-param name="table_name">sw_gis!case_field_geometry_type</xsl:with-param>
							<xsl:with-param name="property_name">type</xsl:with-param>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Manifold</th>
					<td>
						<xsl:call-template name="show_field_manifold"/>
					</td>
				</tr>
				<tr>
					<th>Mandatory?</th>
					<td>
						<xsl:call-template name="show_mandatory">
							<xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='mandatory?_rec']/Feature[@typeName='sw_gis!case_field_mandatory?']/@identifier"/>
							</xsl:with-param>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Priority</th>
					<td>
						<xsl:call-template name="show_priority">
							<xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='priority_rec']/Feature[@typeName='sw_gis!case_field_priority']/@identifier"/>
							</xsl:with-param>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Attach Trigger</th>
					<td>
						<xsl:call-template name="show_field_trigger">
							<xsl:with-param name="trigger_type">attach</xsl:with-param>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Detach Trigger</th>
					<td>
						<xsl:call-template name="show_field_trigger">
							<xsl:with-param name="trigger_type" select="'detach'"/>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Update Trigger</th>
					<td>
						<xsl:call-template name="show_field_trigger">
							<xsl:with-param name="trigger_type" select="'update'"/>
						</xsl:call-template>
					</td>
				</tr>
				<tr>
					<th>Styles</th>
					<td>
						<xsl:call-template name="show_field_styles">
							<xsl:with-param name="object_name">
								<xsl:value-of select="$object_name"/>
							</xsl:with-param>
							<xsl:with-param name="field_name">
								<xsl:value-of select="./property[@typeName='name']"/>
							</xsl:with-param>
						</xsl:call-template>
					</td>
				</tr>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="show_field_styles">
		<xsl:param name="object_name"/>
		<xsl:param name="field_name"/>
		<table>
			<xsl:variable name="relative_path" select="/mclib_xsl_report/swldy_case_styles/@relative_path"/>
			<!-- First the headers for the images-->
			<tr>
				<xsl:for-each select="/mclib_xsl_report/swldy_case_styles/object_styles[@name=$object_name]/style_info[@field_name=$field_name]">
					<xsl:variable name="image_name" select="@file_name"/>
					<xsl:variable name="sub_code" select="@sub_code"/>
					<td>
						<xsl:value-of select="$field_name"/>:<xsl:value-of select="$sub_code"/></td>
				</xsl:for-each>
			</tr>
			<!-- Then the images themselves-->
			<tr>
				<xsl:for-each select="/mclib_xsl_report/swldy_case_styles/object_styles[@name=$object_name]/style_info[@field_name=$field_name]">
					<xsl:variable name="image_name" select="@file_name"/>
					<xsl:variable name="sub_code" select="@sub_code"/>
					<td>
						<img src="{$relative_path}/{$image_name}" alt="{$field_name}:{$sub_code}"/>
					</td>
				</xsl:for-each>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->