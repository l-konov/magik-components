Demo showing usage of a web service to create a new job and design
in the mss_workspace environment.  This demo is not intended as an 
out-of-the-box ready product; rather, it can be used to develop
web services that are tailored to your specific data schemas and
communication requirements (for example, to use standard Maximo 
Enterprise Architecture schemas for receiving information from
Maximo WMS).

To use (server side):
- sw_module_manager.load_module(:mss_ws_http_services)
- sw_module_manager.load_module(:mss_http_server_gui)
- z99 << mss_http_server_framework.new(_unset,_unset,
         :config_definition_module_name, :mss_ws_http_services,
         :config_definition_file_name, "workspace_config.xml")
- z99.activate()

Then, press the Run button on the server.

To use (client side):
- The following assumes that the above server is named <servname>,
  running on port <portno>.
- Also, the following instructions document how to use a different
  Smallworld session to generate a SOAP request.  The generation of
  this request could be done with any tool (i.e. Maximo MEA).
- sw_module_manager.load_module(:mss_http_soap)
- In this module (mss_http_ws_services), load the source file
  source/examples/example_newjobanddesign.magik
- Execute the proc:
    example_newjobanddesign("http://<servname>:<portno>/ws/svc/NewJobANDDesign", "NEW JOB NAME!")
