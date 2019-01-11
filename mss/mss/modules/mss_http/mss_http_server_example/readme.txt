Simple demo showing usage of a couple sample services:
- mss_http_example_file_service to serve files from the TEMP directory.
- mss_http_example_time_service to return a web page displaying the current time.

To use:
- sw_module_manager.load_module(:mss_http_server_example)
- z99 << mss_http_server_framework.new(_unset,_unset,
         :config_definition_module_name, :mss_http_server_example,
         :config_definition_file_name, "example_config.xml")
- z99.activate()

Then, press the Run button on the server.  Assuming your server name
is <servname> on <portno>, try accessing any of these webpages:
- http://<servname>:<portno>/time/index.html
- http://<servname>:<portno>/files/<any_filename>
    (where <any_filename> is any file in your temp directory
