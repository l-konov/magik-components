#% text_encoding = iso8859_1


:sf!html_header
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
    <TITLE>#1</TITLE>
</HEAD>
<BODY>#n

:sf!html_table_start
<P>#n<TABLE cellpadding="2">#n

:sf!html_table_end
</TABLE>#n

:sf!html_table_heading_start
<THEAD>#n

:sf!html_table_heading_end
</THEAD>#n

:sf!html_table_body_start
<TBODY>#n

:sf!html_table_body_end
</TBODY>#n

:sf!html_footer
</BODY>
</HTML>#n

:sf!chr_map_string		0123456789ABCDEF
:sf!html_align_keyword		align
:sf!html_align_cmd		#salign="#1"
:sf!html_colspan_cmd		#scolspan="#1"
:sf!html_tr_cmd			<TR>
:sf!html_img_ref		<IMG align="center" src="file:///#1" alt="#2">&nbsp
:sf!html_td_tag_cmd		<TD#1>
:sf!html_color_open_cmd		<font color=###1>
:sf!html_color_close_cmd	</font>
