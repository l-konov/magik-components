This module provides a viewport for use with layouts which offers support for masking the display using a selection, the trail, or some programmers configured area.  The style for the masking can be configured to support either a complete mask or a partial "dithering". There is also support for drawing the outlint and inside of the mask to obscure or draw attention to it - reverse masking.

To use this element, you will need to configure your layout designer to provide mnapping services for it. To do so, you needd to configure the layout_manager in the design_config.xml with code like this:

         <plugin name="layout_manager" class_name="layout_manager_plugin">
 	    <layout_element class_name="viewport_layout" plugin="viewport_mapper"/>
	    <layout_element class_name="masked_viewport_layout" plugin="viewport_mapper"/>
	</plugin>



Version History:
-----------------
0.8alpha     2/14/2005   -   Brad Sileo, Ten sails Consutling 


Change Log:
-----------
