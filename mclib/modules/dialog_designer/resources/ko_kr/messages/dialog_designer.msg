:about_dialog_designer	다이알로그 디자이너에 관하여 ...
:add_action		Action 추가
:add_button		Button 추가
:add_menu		Menu 추가
:add_pane		Pane 추가
:add_progressbar_pane	Progress Bar 추가
:add_pulldown		Pulldown 추가
:add_section		Section 추가
:add_separator		Separator 추가
:add_stack_window	Stack window 추가
:add_status_pane	Pane 추가
:add_sub_category		Sub-Category 추가
:add_submenu		Pullout Menu 추가
:add_tab		Tab 추가
:add_to_list		List 추가 -->
:add_to_requires			<-- Add
:add_toolbar		Toolbar 추가
:alerts?			경고 보기 ?
:allow_overwrite?		Allow Overwrites?
:app			App :
:app_consumed_data_types	App CONSUMED 데이타 타입
:app_produced_data_types	App PRODUCED 데이타 타입
:auto_generated
	#### 
	####  다이알로그 디자이너에의해 자동생성 : #1
:auto_generated_magik_file_header
##% text_encoding = utf8
#### 
####  다이알로그 디자이너에의해 자동생성 ( #1 )
####
####  System.user_mame(사용자 이름) = #2
####
_package #3
$

:bad_word_launch			
도큐멘트 파일을 열수 없슴니다.

#1

MS Word 프로그램을 먼져 실행하고 파일을 여십시요.

:base_class_def			Class 속성
:base_outlook_category_name	카테고리
:base_outlook_sub_category_name	Sub

:begin_loading_module
####################################################################
## 
## 모듈 로딩 (#1) 
##
####################################################################

:begin_loading_module_definition
####################################################################
## 
## 로딩 모듈 정의 (#1 @ #2) 
##
####################################################################
:build				모듈
:build_and_activate		빌드 / 활성화
:build_module			빌드 ...
:build_module_def			속성
:build_module_description		설명
:build_module_description_default	모듈 설명?
:build_module_name	        	이름/Version
:build_module_name_default      	new_module_name    410
:build_module_requires		요구
:build_module_requires_default
:button_item		Command Button

:canvas			Canvas
:change_to_tab		Tab 으로 변경 ...
:code			Magik / XML
:copy_element		Copy
:cut_element		Cut

:databus		Databus
:dd_colour_choice_tt	컬러
:dd_dash_pattern_tt	Dash Pattern
:dd_date_time_item	Date Time
:dd_date_time_value_code
	#### 
	####  Return the date value from the tree_item

	>> .items[:#1].tree_manager.data.an_element().value[:when]
:dd_default_method_code
	_self.dd_default_method("#1.#2")
:dd_documentation		도큐멘트
:dd_fill_percentage_tt	Fill Percentage
:dd_group_box		Group Box
:dd_hatch_pattern_tt	Hatch Pattern
:dd_line_end_style_tt	End Style
:dd_line_join_style_tt	Join Style
:dd_line_width_tt 	Line Width
:dd_number_input		Number Input
:dd_outlook_bar		Outlook Bar
:dd_paned_window	Paned Window
:dd_point_style_tt	Point Style
:dd_release_notes		Release Notes
:dd_tab_box		Tab Box
:dd_window_stack	Window Stack
:default_method_code
	_self.dd_default_method("#1.#2",_scatter args)
:default_product_def
default_product layered_product

title
	다이알로그 디자이너에의해 자동생성된 프러덕트
end

:defined_module_filter_label	텍스트 필터 :
:defined_module_filter_tt		Type letter combination to filter list below ...
:defined_modules			#1 of #2 defined modules
:delete_current_dialog?		삭제된 다이알로그는 복원할수 없슴니다.
 
이 다이알로그 디자인 [#1] 을 삭제하시겠슴니까 ?

:delete_dialog		다이알로그 제거
:delete_element		엘리멘트 제거
:delete_menubar		Menubar 제거
:delete_pane		Pane 제거
:delete_stack_window	Stack Window 제거
:delete_status_pane	 Pane 제거
:delete_statusbar	Statusbar 제거
:delete_tab		Tab 제거
:dialog			     	다이알로그
:dialog_class			기본 Class
:dialog_class_default		default_class
:dialog_class_list	Class 리스트
:dialog_consumed_data_types	Dialog CONSUMED Data Types
:dialog_description_default       	기본 아이알로그 설명
:dialog_designer	다이알로그 디자이너 [ #1 ]
:dialog_designer_help	... 다이알로그 디자이너 도움말
:dialog_extra_slots	Extra slots
:dialog_extra_slots_tt	... 콤마 분할된 슬롯 이름 추가 (ie. extra_1,two,...)
:dialog_language		언어
:dialog_language_tt        이 다이알로그를 위한 언어를 선택하세요
:dialog_list		다이알로그 리스트
:dialog_method_list	Method 리스트
:dialog_package			팩키지
:dialog_package_tt		팩키지 이름 입력 (default = user)
:dialog_pragma			프라그마 
:dialog_produced_data_types	Dialog PRODUCED Data Types
:do_build_module			모듈 생성
:dock_action		Action
:dock_bottom		아래
:dock_left		왼쪽
:dock_pulldown		Pulldown
:dock_right		오른쪽
:dock_section		Section
:dock_toolbar		Toolbar
:dock_top		위
:docks			Docks
:drop_click_prompt	GUI element 를 입력하기위해 선택

:empty			모든 sub-elements 제거
:end_loading
####################################################################
## 
## Module Load 완료.
##
####################################################################
:explore_code		생성된 코드 보기 ...

:frame			프레임

:group_box		Group Box
:gui_action_definitions		
##
	## Work Area Actions ...
	##

:gui_con_database_code_2
_method #1.sw_databus_data_available(type,data)
	write("'#1' data consumed : ",type,%tab,data)
_endmethod
$

:gui_layout		GUI Layout
:gui_pro_database_code_2
_method #1.sw_databus_data_requested(type)
	write("'#1' data requested : ",type)
_endmethod
$
:gui_quit|()|
	.framework.close()

:hide			숨기기
:image_button_item	Image Button
:image_toggle_item	Image Toggle
:insert_prompt		#1 을 입력하기위해 활성화된 영역안을 선택하세요    <Space> : 선택모그로 복귀
:invalid_module_name_and_version    잘못된 이름/Version.

:label_item		Label
:load_dialog_xml		Load Dialog from XML
:load_from_file			Open
:loading_from_file      	Loading dialog XML description: '#1'

:menubar		Menubar
:menubar_action_definitions		
##
	## Menubar Actions ...
	##
:messages	Messages
:missing_documentation_file	
도큐멘트 파일을 찾을수 없슴니다.

파일 (#1) 이 이동되었거나 이름이 변경되었거나 삭제되었슴니다.

:missing_release_notes_file	
Release Notes 파일을 찾을수 없슴니다.

파일 (#1) 이 이동되었거나 이름이 변경되었거나 삭제되었슴니다.

:move_tab		현제 Tab(#1/#2) 을 이동 합니다.
:new_dialog		New 
:new_dialog_class	dialog_class

:no_app_running		활성화된 어플리케이션이 없슴니다.
:no_dragging_into_self	자기자신으로는 이동 할수 없슴니다.
:no_title		타이틀이 없슴니다.

:only_fixed_fonts_sizable	    폰트 스케일링을위해 font_name='fixed' 를 사용하세요..
:open_file_dir		파일 / 디렉토리 선택
:outlook_bar_component	Outlook Bar
overwrite_existing_class?	선택된 파일은 클래스('#1') 를 사용합니다.

다이알로그 디자인 (#1) 를 덮어 쓰시겠슴니까 ?

아니면 'No'버튼을 누르고 클래스(#1)를 변경하기 위하여 'Module Properties' tab 을 사용하세요.

:overwrite_existing_file?	파일이 이미 존재합니다. 덮어 쓰시겠슴니까 ? ?
:paned_window		Paned Window
:paste_element		Paste
:paste_element_tt_0	Paste (Ctrl+V)  [ #1 ]
:paste_element_tt_n	Paste (Ctrl+V)  [ #1 + #2 sub-elements]
:plugin_item		Plugin or Action
:pragma_classify_level_tt		Code Level classification
:pragma_package_tt		Code Package
:pragma_topic_tt			Code Topic(s): 콤마 분리된 값을 입력하세요
:pragma_usage_tt			Code Usage(s): 콤마 분리된 값을 선택하거나 입력하세요
:prompt_2	 	Submenus/Pullouts/Separators/Buttons 추가
:prompt_3		Panes 추가, drag to re-order, click to select
:prompt_4		Left/right/top or bottom docks 에 버튼 Action 을 추가 하세요.
:prompt_5		Producer 와 Consumer 데이타 타입을 설정하세요. 데이타 타입을 추가하거나 삭제하기위해 Right-click 또는 오른쪽 Panel울 직접 변경하세요.
:prompt_6		자동생성된 XML 과 Magik 코드 보기.
:prompt_7		코드를 생성하기전에 파라미터 설정.
:prompt_8		편집하기위하여 Outlook Bar element를 선택하세요 ...
:prompt_9		약간의 메시지들은 이 툴에 의해 자동 생성될 것입니다. 'Base Class' 코드를 보완하기위해 메시지를 추가 하세요.
:prompt_overwrite?	디렉토리(#2) 아래 파일 '#1.magik' 이 변경되었슴니다.
:public_comments_build_gui|()|
##
##  Define the GUI layout.
##
:public_comments_init_actions|()|
##
##  Initialize actions for SELF.
##
:public_comments_quit|()|
##
##  Close the dialog.
##

:radio_group		Radio Group
:radio_item		Radio Button
:reactivate_dialog		Re-Activate
:recordset		Recordset GUI Component
:refresh_a		F5
:refresh_app_list	Refresh Application List
:refresh_view		Refresh
:reinit			Re-Initialise
:remove_from_list		<-- List 제거
:remove_from_requires		X-- 제거
:reset_rendering           Reset Rendering Position
:rowcol			Row Column Grid

:save_as		저장 ...
:save_dialog_xml		XML로 저장합니다.
:save_to_file		Save
:select_mode		Select / Drag / Edit a GUI element ... 
:select_module_path		 Module Path 선택...
:select_prompt		'#1' 를 선택하기위해 클릭하세요.
:set_module_path			Path
:show_rowcol_cells	Row Column Grid 를 보겠슴니까 ?
:simple_list_item	Simple List
:slider_item		Slider
:sort_messages   		Sort Messages
:statusbar		Statusbar
:style_choice_item	Style Choice
:supplimentary_gui_class_file_header
#% text_encoding = utf8
#### 
####  Auto-generated by Dialog Designer ( #1 )
####
####  System.user_mame = #2
####
####  SUPPLIMENTARY code for gui class '#3'
####    - add/redefine code here, it will not be auto-modified.

:tab_box		Tab Box
:tabular_list		Tabular List
:test			  	Test
:text_choice_item	Text Choice
:text_item		Text Input
:text_window 		Text Window
:toggle_item		Check Box
:toolbar_action_definitions		
##
	## Toolbar Actions ...
	##

:tree_item		Tree List
:unit_text_item		Unit Text Input
:use_databus		Databus
:use_docks		Docks
:use_magik_xml		Magik / XML
:use_menubar		Menubar
:use_module_properties	Module 속성 ...
:use_statusbar		Statusbar

:warning_used_dialog_class		Dialog Class '#1' 는 유일하지 않슴니다.
:window_stack			Window Stack

:xml			XML
:xml_creation_header 	<!-- Autogenerated by Dialog Designer for user #1 on #2 -->

:xml_version_header 	<?xml version="1.0" encoding="windows-1252" standalone="yes"?>
:yes_always		Yes, Always.
