#% text_encoding = iso8859_1

:clear_options		Clear Display Options
:clear_options_tt	Clear 'Display Options' Fields
:clear_options_sht	Clears all text-entry 'Display Options' fields.
:compress_all		Hide All Call Details
:compress_all_sht	Hide method call details for all items in the list
:compress_all_tt	Hide All Method Call Details
:compress_selection	Hide Call Details For Selection
:compress_selection_sht	Hide method call details for all selected items in the list
:compress_selection_tt	Hide Method Call Details For Selection
:default_options	Default Display Options
:default_options_tt	Set Default Display Options
:default_options_sht	Resets the 'Display Options' to their default values.
:display_method		View Source Code
:display_method_sht	Edit the file where this method has been defined.
:display_method_tt	View Source Code...
:expand_all		Show All Call Details
:expand_all_sht		Show method call details for all items in the list
:expand_all_tt		Show All Method Call Details
:expand_selection	Show Call Details For Selection
:expand_selection_sht	Show method call details for all selected items in the list
:expand_selection_tt	Show Method Call Details For Selection
:export_to_excel	Export data to an Excel ASCII file...
:export_to_excel_sht	Select a file to which the analyzed data can be written to from a newly opened dialog. The written file will contain tab-separated data.
:export_to_excel_tt	Export Data to an Excel ASCII File
:export_to_html		Export data to an HTML file...
:export_to_html_sht	Select a file to which the analyzed data can be written to from a newly opened dialog. The written file will contain HTML code.
:export_to_html_tt	Export Data to an HTML File
:refresh		Refresh
:refresh_sht		Redraw the data that is currently displayed
:refresh_tt		Refresh Display

:display_options	Display Options
:method_filter		Method Filter :
:class_filter		Class Filter :

:call_count		Call Count :
:gt0			Any
:gt1			> 1
:gt2			> 2
:gt3			> 3
:gt4			> 4
:gt5			> 5
:gt6			> 6
:gt7			> 7
:gt8			> 8
:gt9			> 9
:sort_methods 		Sort Methods :
:action_selections	Actions

:call_cnt_header	Calls
:recv_header		Receiver
:meth_header		Method
:lines_header		Lines

:col1			## Calls
:col2			Class / Model
:col3			Method
:col4			Line(s)

:select_html_file_path	Select HTML Output File
:select_csv_file_path	Select CSV/Excel Output File
:select_file_path	Select Output File

:cant_determine_source_file	Can't determine the source file of this method!

:html_header
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
    <TITLE>Method Call Analysis</TITLE>
</HEAD>
<BODY>#n

:html_analysis_info
<P><b>#1:</b> #2<P>
<P><TABLE border=1 cellpadding=2>
<CAPTION>Method Call Analysis</CAPTION>
<COLGROUP span="4">
<COL align="right"><COL align="right"><COL align="left"><COL align="left">#n

:html_table_heading
<THEAD>
<TR><TD><B><I>#1</I></B> <TD align="center"><B><I>#2</I></B> <TD align="center"><B><I>#3</I></B> <TD><B><I>#4</I></B>
</THEAD>#n

:html_table_start
<TBODY>#n

:html_table_end
</TBODY>

:html_footer
</TABLE>
</BODY>
</HTML>#n