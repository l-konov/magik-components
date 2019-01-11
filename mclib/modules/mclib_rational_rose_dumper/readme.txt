Basic Usage:
------------

1) Edit glue file
	a) Set the default settings for dump - can be viewed/changed before dump by pressing the "Settings" button
2) load the module
3) Open Rational Rose with the classes that you would like to dump
3) Open the Category\File dumper interface - at the magik prompt: rr_dumper_menu.open() 
	a) The top ">> " label shows the current source rose package/category selected (always starts in Logical View)
	b) Left-hand list shows child packages of the current package
	c) Right-hand list shows classes in the current package
	b) Press "Dump Dir" to select the target directory for the dump
	c) Double-click itms in left-hand list to navigate the Rational Rose package tree
	d) Press the Settings button to check the dump rules - defaults set in glue file - can be changed before dump
	e) Press "Dump Category" to dump whole category (including classes) - using rules
	f) Press "Dump Classes" to only dump classes selected in the right-hand list - using rules
