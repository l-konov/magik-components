<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:swldy="http://www.gesmallworld.com/gml_extension" exclude-result-prefixes="swldy">
	<xsl:import href="case_dump_field_details.xsl"/>
	<xsl:import href="case_dump_object_details.xsl"/>
	<xsl:output method="html"/>
	<xsl:param name="identifier"/>
	<!-- Some global values available throughout -->
	<xsl:variable name="object_identifier" select="$identifier"/>
	<xsl:variable name="object_id" select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[@typeName='sw_gis!case_object' and @identifier=$identifier]/property[@typeName='id']"/>
	<xsl:variable name="object_name" select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[@typeName='sw_gis!case_object' and @identifier=$identifier]/property[@typeName='name']"/>
	<xsl:template match="/">
	<html xmlns:swldy="http://www.gesmallworld.com/gml_extension"><head>
				<title>
					<xsl:value-of select="$object_name"/>
				</title>
				<link rel="stylesheet" type="text/css" href="global.css"/>
			</head>
		<body>
			<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[@typeName='sw_gis!case_object' and @identifier=$identifier]">
				<table width="100%" border="1">
					<tbody>
						<tr>
							<th align="left">Object :</th>
							<th align="left">
								<a name="{$identifier}">
									<xsl:value-of select=".//property[@typeName='name']"/>
								</a>
							</th>
							<td rowSpan="2">
								<xsl:value-of select="./property[@typeName='text']"/>
							</td>
						</tr>
						<tr>
							<th align="left">External Name:</th>
							<th align="left">
								<xsl:value-of select=".//property[@typeName='e_name']"/>
							</th>
						</tr>
						<tr>
							<th align="left">Fields:</th>
							<td colSpan="2">
								<table border="1">
									<tbody>
										<tr>
											<th>Kind</th>
											<th>Visible?</th>
											<th>Name</th>
											<th>External Name</th>
											<th>Type</th>
											<th>Mandatory?</th>
											<th>Default</th>
											<th>Unset</th>
											<th>Editor</th>
										</tr>
										<xsl:for-each select=".//swldy:relationshipProperty[@typeName='fields']/Feature">
											<xsl:call-template name="show_field">
												<xsl:with-param name="type">physical</xsl:with-param>
												<xsl:with-param name="id">
													<xsl:value-of select="@identifier"/>
												</xsl:with-param>
												<xsl:with-param name="object_id">
													<xsl:value-of select="$object_id"/>
													</xsl:with-param>
											</xsl:call-template>
										</xsl:for-each>
										<xsl:for-each select=".//swldy:relationshipProperty[@typeName='fields']/Feature">
											<xsl:call-template name="show_logical_field">
												<xsl:with-param name="type">logical</xsl:with-param>
												<xsl:with-param name="id">
													<xsl:value-of select="@identifier"/>
												</xsl:with-param>
												<xsl:with-param name="object_id">
													<xsl:value-of select="$object_id"/>
												</xsl:with-param>
											</xsl:call-template>
										</xsl:for-each>
										<xsl:for-each select=".//swldy:relationshipProperty[@typeName='fields']/Feature">
											<xsl:call-template name="show_field">
												<xsl:with-param name="type">geometric</xsl:with-param>
												<xsl:with-param name="id">
													<xsl:value-of select="@identifier"/>
												</xsl:with-param>
												<xsl:with-param name="object_id">
													<xsl:value-of select="$object_id"/>
												</xsl:with-param>
											</xsl:call-template>
										</xsl:for-each>
										<xsl:for-each select=".//swldy:relationshipProperty[@typeName='fields']/Feature">
											<xsl:call-template name="show_join_field">
												<xsl:with-param name="type">join</xsl:with-param>
												<xsl:with-param name="id">
													<xsl:value-of select="@identifier"/>
												</xsl:with-param>
												<xsl:with-param name="object_id">
													<xsl:value-of select="$object_id"/>
												</xsl:with-param>
											</xsl:call-template>
										</xsl:for-each>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<th align="left">Properties:</th>
							<td>
								<xsl:call-template name="show_object_properties"><xsl:with-param name="object_id">
										<xsl:value-of select="$object_id"/>
									</xsl:with-param></xsl:call-template>
							</td>
						</tr>
						<tr>
							<th align="left">Field Details:</th>
							<td>
								<xsl:call-template name="show_object_field_details"><xsl:with-param name="object_id">
										<xsl:value-of select="$object_id"/>
									</xsl:with-param><xsl:with-param name="object_name">
										<xsl:value-of select="$object_name"/>
									</xsl:with-param></xsl:call-template>
							</td>
						</tr>
					</tbody>
				</table>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
	<xsl:template name="show_field">
		<xsl:param name="id"/>
		<xsl:param name="object_id"/>
		<xsl:param name="type"/>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[@typeName='sw_gis!case_field']/featureMember[@typeName='sw_gis!case_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$id]">
		<xsl:variable name="field_type" select="./property[@typeName='type']"/>
		<xsl:if test="$type=$field_type">
			<tr>
				<td><xsl:value-of select="$field_type"/></td>
				<td align="center"><!-- vis -->
					<xsl:call-template name="show_visible">
						<xsl:with-param name="id">
							<xsl:value-of select="@identifier"/>
						</xsl:with-param>
						<xsl:with-param name="object_id" select="$object_id"/>
					</xsl:call-template>
				</td>
				<td>
					<a href="#{$id}">
						<xsl:value-of select=".//property[@typeName='name']"/>
					</a>
				</td>
				<td>
					<xsl:value-of select=".//property[@typeName='e_name']"/>
				</td>
				<td><!-- type --><xsl:variable name="geom_count" select=".//swldy:relationshipProperty[@typeName='geometry_type_rec']/@count"/><xsl:variable name="ft_count" select=".//swldy:relationshipProperty[@typeName='field_type_rec']/@count"/>
					<xsl:if test="$geom_count='1'">
							<xsl:call-template name="show_field_type_link">
								<xsl:with-param name="id">
									<xsl:value-of select=".//swldy:relationshipProperty[@typeName='geometry_type_rec']/Feature[@typeName='sw_gis!case_field_geometry_type']/@identifier"/>
								</xsl:with-param>
								<xsl:with-param name="table_name">sw_gis!case_field_geometry_type</xsl:with-param>
								<xsl:with-param name="property_name">type</xsl:with-param>
							</xsl:call-template>
						</xsl:if>
					<xsl:if test="$ft_count='1'">
						<xsl:call-template name="show_field_type_link"><xsl:with-param name="id">
									<xsl:value-of select=".//swldy:relationshipProperty[@typeName='field_type_rec']/Feature[@typeName='sw_gis!case_field_ft']/@identifier"/>
								</xsl:with-param><xsl:with-param name="table_name">sw_gis!case_field_ft</xsl:with-param><xsl:with-param name="property_name">field_type</xsl:with-param></xsl:call-template>
					</xsl:if>
				</td>
				<td>
					<xsl:call-template name="show_mandatory">
					    <xsl:with-param name="id">
						<xsl:value-of select=".//swldy:relationshipProperty[@typeName='mandatory?_rec']/Feature[@typeName='sw_gis!case_field_mandatory?']/@identifier"/>
					    </xsl:with-param>
					    <xsl:with-param name="field_type">
						<xsl:value-of select=".//property[@typeName='type']"/>
					    </xsl:with-param>
					</xsl:call-template>
				</td>
				<td><!-- default -->
					<xsl:call-template name="show_default"><xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='default_value_rec']/Feature[@typeName='sw_gis!case_field_default_value']/@identifier"/>
							</xsl:with-param></xsl:call-template>
				</td>
				<td><!-- unset -->
					<xsl:call-template name="show_unset"><xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='unset_value_rec']/Feature[@typeName='sw_gis!case_field_unset_value']/@identifier"/>
							</xsl:with-param></xsl:call-template>
				</td>
				<td><!-- editor -->
					<xsl:call-template name="show_field_editor"><xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='editor_rec']/Feature[@typeName='sw_gis!case_field_editor']/@identifier"/>
							</xsl:with-param></xsl:call-template>
				</td>
			</tr>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

	<xsl:template name="show_logical_field">
		<xsl:param name="id"/>
		<xsl:param name="object_id"/>
		<xsl:param name="type"/>
		<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[@typeName='sw_gis!case_field']/featureMember[@typeName='sw_gis!case_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$id]">
		<xsl:variable name="field_type" select="./property[@typeName='type']"/>
		<xsl:if test="$type=$field_type">
			<tr>
				<td><xsl:value-of select="$field_type"/></td>
				<td align="center"><!-- vis -->
					<xsl:call-template name="show_visible">
						<xsl:with-param name="id">
							<xsl:value-of select="@identifier"/>
						</xsl:with-param>
						<xsl:with-param name="object_id" select="$object_id"/>
					</xsl:call-template>
				</td>
				<td>
					<a href="#{$id}">
						<xsl:value-of select=".//property[@typeName='name']"/>
					</a>
				</td>
				<td>
					<xsl:value-of select=".//property[@typeName='e_name']"/>
				</td>
				<!-- type -->
				<td>
				<xsl:variable name="geom_count" select=".//swldy:relationshipProperty[@typeName='geometry_type_rec']/@count"/><xsl:variable name="ft_count" select=".//swldy:relationshipProperty[@typeName='field_type_rec']/@count"/>
					<xsl:if test="$geom_count='1'">
						<xsl:call-template name="show_field_type_link">
							<xsl:with-param name="id">
								<xsl:value-of select=".//swldy:relationshipProperty[@typeName='geometry_type_rec']/Feature[@typeName='sw_gis!case_field_geometry_type']/@identifier"/>
							</xsl:with-param>
							<xsl:with-param name="table_name">sw_gis!case_field_geometry_type</xsl:with-param>
							<xsl:with-param name="property_name">type</xsl:with-param>
						</xsl:call-template>
					</xsl:if>
					<xsl:if test="$ft_count='1'">
						<xsl:call-template name="show_field_type_link"><xsl:with-param name="id">
							<xsl:value-of select=".//swldy:relationshipProperty[@typeName='field_type_rec']/Feature[@typeName='sw_gis!case_field_ft']/@identifier"/>
							</xsl:with-param><xsl:with-param name="table_name">sw_gis!case_field_ft</xsl:with-param>
							<xsl:with-param name="property_name">field_type</xsl:with-param></xsl:call-template>
					</xsl:if>
				</td>
				<td><!-- mandatory --></td>
				<td><!-- unset --></td>
				<td><!-- default --></td>
				<td><!-- editor -->
					<xsl:call-template name="show_field_editor">
						<xsl:with-param name="id">
							<xsl:value-of select=".//swldy:relationshipProperty[@typeName='editor_rec']/Feature[@typeName='sw_gis!case_field_editor']/@identifier"/>
						</xsl:with-param>
					</xsl:call-template>
				</td>
			</tr>
		</xsl:if>
	</xsl:for-each>
</xsl:template>


<xsl:template name="show_join_field">
	<xsl:param name="id"/>
	<xsl:param name="object_id"/>
	<xsl:param name="type"/>
	<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='sw_gis!case_field']/FeatureCollection[@typeName='sw_gis!case_field']/featureMember[@typeName='sw_gis!case_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$id]">
		<xsl:variable name="field_type" select="./property[@typeName='type']"/>
		<xsl:if test="$type=$field_type">
		<tr>
			<td><xsl:value-of select="$field_type"/></td>	
			<td align="center">
			<!-- vis -->
				<xsl:call-template name="show_visible">
					<xsl:with-param name="id">
						<xsl:value-of select="@identifier"/>
					</xsl:with-param>
					<xsl:with-param name="object_id" select="$object_id"/>
				</xsl:call-template>
			</td>
			<!-- Name -->
			<td>
				<a href="#{$id}">
					<xsl:value-of select=".//property[@typeName='name']"/>
				</a>
			</td>
			<!-- E Name -->
			<td>
				<xsl:value-of select=".//property[@typeName='e_name']"/>
			</td>
			<!-- Join TO -->
			<td>
				<xsl:call-template name="show_join_to">
					<xsl:with-param name="id">
						<xsl:value-of select="$id"/>
					</xsl:with-param>
				</xsl:call-template>
			</td>
			<!-- Mandatory -->
			<td>
			<xsl:call-template name="show_mandatory">
				<xsl:with-param name="id">
					<xsl:value-of select=".//swldy:relationshipProperty[@typeName='mandatory?_rec']/Feature[@typeName='sw_gis!case_field_mandatory?']/@identifier"/>
				</xsl:with-param>
			</xsl:call-template>
			</td>
			<td><!-- unset --></td>
			<td><!-- default --></td>
			<td><!-- editor -->
				<xsl:call-template name="show_field_editor">
					<xsl:with-param name="id">
						<xsl:value-of select=".//swldy:relationshipProperty[@typeName='editor_rec']/Feature[@typeName='sw_gis!case_field_editor']/@identifier"/>
					</xsl:with-param>
				</xsl:call-template>
			</td>
		    </tr>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template name="show_join_to">
	<xsl:param name="id"/> <!-- the field identifier for the join field to report -->
	<xsl:variable name="rel_rec" select="/mclib_xsl_report/featureMember[@typeName='Case Relationship']/FeatureCollection[@identifier='sw_gis!case_relationship']/featureMember[@typeName='sw_gis!case_relationship']/Feature/swldy:relationshipProperty[@typeName='child_join_field' or @typeName='parent_join_field']/Feature[@typeName='sw_gis!case_field' and @identifier=$id]/../.."/>
	<xsl:variable name="obj_1_id" select="$rel_rec/swldy:relationshipProperty[@typeName='object1']/Feature[@typeName='sw_gis!case_object']/@identifier"/>
	<xsl:variable name="obj_2_id" select="$rel_rec/swldy:relationshipProperty[@typeName='object2']/Feature[@typeName='sw_gis!case_object']/@identifier"/>	
	<!-- Output the join type -->
	<xsl:value-of select="$rel_rec/property[@typeName='type']"/><span> to </span>
	<!-- and then a link to the related object -->
	<xsl:if test="$object_identifier=$obj_1_id">
		<xsl:call-template name='object_link'>
			<xsl:with-param name="id" select="$rel_rec/swldy:relationshipProperty[@typeName='object2']/Feature[@typeName='sw_gis!case_object']/@identifier"/>
		</xsl:call-template>
	</xsl:if>
	<xsl:if test="$object_identifier=$obj_2_id">
		<xsl:call-template name='object_link'>
			<xsl:with-param name="id" select="$rel_rec/swldy:relationshipProperty[@typeName='object1']/Feature[@typeName='sw_gis!case_object']/@identifier"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

<xsl:template name="object_link">
	<xsl:param name="id"/>  <!-- the object identifier for the object to output a link to-->
	<xsl:for-each select="/mclib_xsl_report/featureMember[@typeName='Case Object']/FeatureCollection[@identifier='sw_gis!case_object']/featureMember/Feature[@typeName='sw_gis!case_object' and @identifier=$id]">
		<xsl:variable name="mname" select="./property[@typeName='name']"/>
		<xsl:variable name="link" select="concat('object_',$mname,'.html')"/>
		<a target="data_frame" href="{$link}">
			<xsl:value-of select="./property[@typeName='e_name']"/>
		</a>
	</xsl:for-each>
</xsl:template>


</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Pipe Output" userelativepaths="yes" externalpreview="no" url="..\..\..\..\..\..\..\..\..\..\temp\case\case_dump.xml" htmlbaseurl="" outputurl="..\..\..\..\..\..\..\..\..\..\temp\case\object_pipe_segment.html" processortype="internal" useresolver="yes" profilemode="2" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><parameterValue name="identifier" value="'swrefVrecordVdatasetZcaseVcollectionZsw_gis$0021case_objectVkeysZ1426'"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="..\..\..\..\..\..\..\..\..\..\temp\case\case_dump.xml" srcSchemaRoot="mclib_xsl_report" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="/"><block path="html/head/title/xsl:value&#x2D;of" x="326" y="48"/><block path="html/body/xsl:for&#x2D;each" x="326" y="80"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr/td/table/xsl:for&#x2D;each" x="176" y="50"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr/td/table/xsl:for&#x2D;each/xsl:call&#x2D;template" x="246" y="80"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr[1]/td/table/xsl:for&#x2D;each" x="56" y="50"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr[1]/td/table/xsl:for&#x2D;each/xsl:call&#x2D;template" x="126" y="80"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr[2]/td/table/xsl:for&#x2D;each" x="16" y="50"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr[2]/td/table/xsl:for&#x2D;each/xsl:if" x="286" y="40"/><block path="html/body/xsl:for&#x2D;each/table/tr[2]/td/table/tr[2]/td/table/xsl:for&#x2D;each/xsl:call&#x2D;template" x="366" y="40"/><block path="html/body/xsl:for&#x2D;each/table/tr[3]/td/xsl:call&#x2D;template" x="366" y="80"/><block path="html/body/xsl:for&#x2D;each/table/tr[4]/td/xsl:call&#x2D;template" x="286" y="80"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->