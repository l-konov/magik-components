This module provides support for loading the code needed for an applicatyion on the fly, instead of including it in the image. Only a simple application definition is needed, then the required module is loaded to pull in the real applciation deifnition and all of its needed code. this can be useful for loading something like the CASE tool into an image on demand without carrying all this code around.

To use this code, setup an application to reigster with something like:

smallworld_product.register_application( :dynamic_case,
					 "mclib:dynamic_application",
					 :dynamic_application_class,"sw:case_graphics_system",
					 :dynamic_module_name,:case_magik_gui,
					 :ace_name, "case_220",
					 :description, "Provides data modeling facilities for populating the CASE database",
					 :soc_name, :case,
					 :external_name, "Dynamic CASE Tool" )
$

:dynamic_application_class - This specifies the real class fo rthe actual application to start
:dynamic_module_name - the name of a module to load before trying to start the application
:dynamic_application_name - the name of another application definition to start. This can be registered while loading :dynamic_module_name and then it will be started instead of startiong from this definition.

All other values in the register_application() are passewd along to the :dynamic_application_class through the new_from_def() method to launch it.


Version History:
-----------------
0.8alpha     2/14/2005   -   Brad Sileo, Ten Sails Consulting 


Change Log:
-----------