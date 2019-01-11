
Dialog Designer 2.7

Welcome to the Dialog Designer.  This has been a pet project of mine since January 2007.  With it you can create the essential Magik source code for simple or complex GUIs in a matter of minutes, rather than hours.  This tool allows you to create and manipulate the key portions of a GUI without writing any Magik or XML.  The idea is to develop the GUI quickly to the stage where the GUI activates and the internal behavior can be developed – the really interesting part of GUI creation in my opinion.   With a little care you can keep the GUI and background development separate but linked so you can continue to use the Dialog Designer for future GUI manipulations.
 
The Dialog Designer generates the entire module for a dialog design, complete with XML, message and Magik files.  Reverse engineering of existing dialogs so they can be manipulated is not supported – I have looked into the problem a bit and it is going to be tricky whenever I get the time to try to code it.
 
You can save a design you have created to XML and later reload it.  These XML files could be used to standardize dialogs, store common GUI element sets or GUI prototype designs and are easily shared between GUI designers/developers.
 
I have implemented the most common Magik GUI widgets, but there are many less common widgets that a developer may desire.  For these, I suggest inserting a common widget into the dialog design for layout purposes and once the Magik GUI code is finalized, update the code with the desired widget.  In addition, I have added a few ‘custom’ widgets that address common programming tasks like opening a file, selecting a directory, selecting a style, choosing a date or inserting an action from another plugin.
 
This application was developed against SW4.2 (SWAF) and SW4.1 (SWAF) images and relies on some classes specific to SWAF images.  This release is compatible with SW4.3 (SWAF), though the new GUI classes that are shipping with SW4.3 are not implemented as they are still expected to change in the near term.
 
Use this tool to create GUIs, generate sample code for cut/pasting into your existing GUI code or just to see the syntax.  I hope you find the tool intuitive and useful, as I do.
 
If you have any suggestions, feel free to send me an email as I am always open to ideas that improve this tool.   

Cheers,

Graham Garlick
graham@ifactorconsulting.com

Sept 2012




Installation and Activation
--------------------------------------------------------------

Put the dialog_designer module somewhere logical.  I have included a product.def file if you want to keep it separated from other code.  

You can start Dialog Designer directly from the Magik prompt once the module is loaded:

MagikSF> dialog_designer.open()

This will open a new, non-cached instance of the dialog designer. 


If you want to launch the Dialog Designer from a button within an existing application then add these lines to your application config.xml and gui.xml respectively.

<plugin name="dialog_designer_plugin" class_name="dialog_designer_plugin"/>

<action name="dialog_designer_plugin.activate_dialog"/>

 

