This module allows you to create pseudo records that can display different 
columns in the Smallworld Explorer. This is very useful if you are trying to 
display a result list that was generated from either hidden fields or methods.

The example directory is a good place to start. 

This was designed and tested using the Explorer from Core 4.2. It could be 
potentially used in other places which may require further code development to
support, but it is a good start.


Note that if your results are larger then 200, you need to create and send to
the explore a fcsi_pseudo_rwo_set. This has functionality not to send to the 
underlying collection for information when ordering and exporting.


