This module provides an API for launching and managing threaded processes from a plugin or other class.  Classes wishing to access this API should innerit from plugin_threading_mixin to get access to the API behaviors. Such classes must also provide a property called thread_engines and ensure that it is initialised to an empty proeprty_list prior to accesing any of the threading API functions. 

A call to build_threading_actions should be included in the init_actions() method for your plugin to provide access to a collection of actions used to start, stop, suspend and resume the engines running various threads.

The class may redefine the shared constant thread_engine_types to configure any number of thread angines which will be available for running background processes. A set of actions is created for each engine type. With no configuration, the class will support a single engine and its actions with the name :standard.  This is suifficient in the majority of cases, as only the most complex interaction environments would require support for multiple simultaneous background threads. Of course, only the most sophisticated user is likely to be able to function and manage a system with such a set of threads, and this benhavior is not intended to manage said user.

Each engine type defined in :thread_engine_types leads to theh creation fo an instance of threading_plugin, which is the componnet which provides thw actual services to create and manage threads. It is also possible to use this plugin directly for threading services on any component_framework if desired.

Version History:
-----------------
0.8alpha     2/14/2005   -   Brad Sileo, Ten sails Consutling 


Change Log:
-----------
