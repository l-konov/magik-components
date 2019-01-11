This module provides a collection of behavior to allow a plugin to dynamically build its GUI either inside some role-based container or as a separate dialog parented to the application.  To make use of this mixin, ensure that you plugin inherits from it, and includes the launched_panel property, as described in the public comments for the mixin.

Once this is in place, you should ensure that init_actions() calls the init_embedded_actions() method and then the action :activate_embedded_or_standalone can be used to launch the panel. The location of the panel is controlled by the value assigned to embedded_role_name. if this property exists on your plugin, it is used to locate a container assigned this role in he framework of the plugin.  If that exists, then the plugin is added there. Otherwise, it is launched as a separate dialog.  In either case, you can call place_embedded_close_acton() from your build_gui() method and it build an appropriate set of buttons to allow the user to peel, embed, and close (when embedded) the GUI for the plugin.



Version History:
-----------------
0.8alpha     2/14/2005   -   Brad Sileo, Ten sails Consulting 


Change Log:
-----------
