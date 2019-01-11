:about_dialog_designer	Acerca de Dialog Designer ...

:add_action		Añadir Acción
:add_button		Añadir Botón
:add_category		Añadir Categoría
:add_menu		Añadir Menú
:add_pane		Añadir Panel
:add_progressbar_pane	Añadir Barra de Progreso
:add_pulldown		Añadir Deplegable
:add_section		Nueva Sección
:add_separator		Añadir Separador 
:add_stack_window		Añadir la Ventana a Stack Window (Pila)
:add_sub_category		Añadir Subcategoría
:add_submenu		Añadir Submenú
:add_tab			Añadir Pestaña
:add_to_list		Añadir a la lista -->
:add_to_requires			<-- Añadir
:add_toolbar		Nueva Barra de Herramientas
:alerts?				¿Mostrar alertas?
:allow_overwrite?		¿Permitir Sobreescritura?
:app	App :
:app_consumed_data_types	App Data Types CONSUMIDORES
:app_produced_data_types	App Data Types PRODUCTORES
:auto_date_code?                ¿Fecha Automática en Código?
:auto_date_suppressed           Ver Fecha del Archivo.
:auto_generated
	#### 
    ####  Autogenerado por Dialog Designer v#2 : #1
:auto_generated_magik_file_header
##% text_encoding = iso8859_1
#### 
####  Autogenerado por Dialog Designer v#4
####  on #1
####
####  System.user_name = #2
####

_package #3
$

:bad_base_class     La 'Clase Base' debe empezar por una letra y 
no puede contener las palabras 'plugin' o 'framework'.
:bad_base_path    La propiedad 'Directorio' (#1) en la pestaña 'Propiedades del Módulo' es inválida.
:bad_word_launch			
El archivo de documentación no puede ser abierto automáticamente. 

#1

Intenta iniciar MS Word y, a continuación, abre el archivo desde allí.

:base_class_def			Propiedades de la Clase
:base_outlook_category_name	Categoría
:base_outlook_sub_category_name	Sub
:begin_loading_module
####################################################################
## 
## Cargando Módulo (#1) 
##
####################################################################
:begin_loading_module_definition
####################################################################
## 
## Cargando Definición del Módulo (#1 @ #2) 
##
####################################################################
:build				Propiedades del Módulo
:build_and_activate		Generar / Activar
:build_module			Generar...
:build_module_def			Propiedades del Módulo
:build_module_description		Descripción
:build_module_description_default	¿Descripción del Módulo? 
:build_module_name	        	Nombre/Versión 
:build_module_name_default      	new_module_name    410
:build_module_requires		Requiere 
:build_module_requires_default
:button_item		Text Button

:canvas			Canvas
:change_to_tab		Cambiar a Pestaña...
:class_msg_txt_not_found   '#1' no encontrado. 
:code			Magik / XML
:copy_element		Copiar
:copy_image_files       Copiar archivos de imagen en el módulo '#1'
:cut_element		Cortar

:databus			Databus
:dd_colour_choice_tt	Color
:dd_dash_pattern_tt	Dash Pattern
:dd_date_time_item	Date Time
:dd_date_time_value_code
	#### 
	####  Devuelve el valor la fecha desde el tree_item

	>> .items[:#1].tree_manager.data.an_element().value[:when]
:dd_documentation		Documentación 
:dd_fill_percentage_tt	Fill Percentage
:dd_group_box		Group Box
:dd_hatch_pattern_tt	Hatch Pattern
:dd_line_end_style_tt	End Style
:dd_line_join_style_tt	Join Style
:dd_line_width_tt 	Line Width
:dd_number_input		Number Input
:dd_outlook_bar		Outlook Bar
:dd_paned_window		Paned Window
:dd_point_style_tt	Point Style
:dd_release_notes		Notas de la Versión
:dd_tab_box		Tab Box
:dd_tabular_list    Tabular List
:dd_webpage		Página de descarga
:dd_window_stack		Window Stack
:default_product_def
default_product layered_product

title
	Autogenerado producto por defecto (Dialog Designer)
end

:defined_module_filter_label	Filtro: 
:defined_module_filter_tt		Escriba para filtrar la lista...
:defined_modules			#1 de #2 módulos definidos
:delete_container    Quitar sólo este Contenedor
:delete_current_dialog?	Los diálogos borrados no se pueden recuperar.
 
¿Está seguro de que desea borrar este diseño de diálogo? [# 1] 
:delete_dialog		Borrar Diálogo
:delete_element		Eliminar
:delete_menubar		Eliminar Barra de Menú
:delete_pane		Eliminar Panel
:delete_stack_window	Eliminar Stacked Window
:delete_statusbar	Eliminar Barra de Estado
:delete_tab		Eliminar Pestaña Actual
:dialog				Diálogo 
:dialog_class		Clase Base
:dialog_class_default	default_class
:dialog_class_list	Lista de Clases
:dialog_consumed_data_types	Data Types CONSUMIDORES del Diálogo
:dialog_description_default       	Descripción del diálogo por defecto
:dialog_designer	Dialog Designer [ #1 ]
:dialog_designer_help	... acerca de Dialog Designer
:dialog_extra_slots	Slots extra
:dialog_extra_slots_tt		... añade los nombres de los slots separados por comas (p.ej. extra_1,dos,...)
:dialog_language		Idioma
:dialog_language_tt		Selecciona el Idioma principal para este diálogo
:dialog_list		Lista de Diálogos
:dialog_method_list	Lista de Métodos
:dialog_package			Paquete
:dialog_package_tt		Introduce un nombre para el paquete (por defecto = user)
:dialog_pragma			Pragma 
:dialog_produced_data_types	Data Types PRODUCTORES del Diálogo
:do_build_module			Generar Módulo
:dock_action		Action
:dock_bottom		Inferior
:dock_left		Izquierda
:dock_pulldown		Pulldown
:dock_right		Derecha
:dock_section		Section 
:dock_toolbar		Toolbar
:dock_top		Superior
:docks			Docks
:drop_click_prompt	Haga clic para insertar un elemento ... 

:empty			Eliminar TODOS los Subelementos ... 
:end_loading
####################################################################
## 
## Carga de Módulo Completada.
##
####################################################################
:explore_code		Explora código generado ...

:frame			Frame

:group_box		Group Box
:gui_action_definitions		
##
	## Acciones del área de trabajo (Work Area Actions) ...
	##
:gui_con_database_code_2
_method #1.sw_databus_data_available(type,data)
	write("'#1' data consumed : ",type,%tab,data)
_endmethod
$

:gui_layout		Diseño GUI
:gui_pro_database_code_2
_method #1.sw_databus_data_requested(type)
	write("'#1' data requested : ",type)
_endmethod
$
:gui_quit|()|
	.framework.close()

:hide			No utilizar

:image_button_item	Image Button
:image_toggle_item	Image Toggle
:insert_prompt		#1: Haga clic en el interior de un área resaltada para insertar ... <Space> para volver al modo 'Seleccionar'
:invalid_module_name_and_version    Nombre del módulo/Versión inválidos. 

:label_item		Label
:load_dialog_xml		Carga de diálogo desde XML
:load_from_file		Abrir
:loading_from_file      	Cargando XML de descripción del diálogo: '#1'

:menubar			Barra de Menú
:menubar_action_definitions		
##
	## Acciones del Menú (Menubar Actions) ...
	##
:message_find_next   Siguiente
:message_find_prev   Anterior
:messages	Mensajes
:messages_for     Mensajes Extra para '#1' class :
:missing_documentation_file 
No se encuentra el archivo de documentación.

#1

ha sido movido, renombrado o borrado. 

:missing_release_notes_file	
Fichero de Cambios no encontrado.

#1

ha sido movido, renombrado o borrado.

:move_tab		Mover Pestaña Actual (# 1 / # 2) a la Posición ...
:new_dialog		Nuevo
:new_dialog_class	dialog_class

:no_app_running		Ninguna aplicación activa
:no_base_path    	Por favor introduce el 'Directorio' base en la pestaña 'Propiedades del Módulo'.
:no_dragging_into_self	Arrastrar un elemento sobre sí mismo no es válido. 
:no_title		Sin Título

:only_fixed_fonts_sizable	Usa font_name ='fixed' para permitir cambiar el tamaño fuente.
:open_file_dir		File or Directory Selection
:outlook_bar_component	Outlook Bar
:overwrite_existing_class?	El archivo seleccionado a importar utiliza la clase '# 1'. 

¿Quieres sobreescribir el diseño de diálogo '# 1' existente?

Si no es así, pulsa 'No' y utiliza la pestaña 'Propiedades del Módulo' para cambiar la clase
'#1'. 
:overwrite_existing_file?	El archivo ya existe ... ¿Sobreescribirlo?

:paned_window		Paned Window
:panel_separator			Panel Separator
:parsing_progress    		[#2] Cargando el #1 ...
:paste_element			Pegar
:paste_element_tt_0		Pegar (Ctrl+V)  [ #1 ]
:paste_element_tt_n		Pegar (Ctrl+V)  [ #1 + #2 sub-elementos]
:plugin_item			Plugin or Action
:pragma_classify_level_tt		Nivel de clasificación del código
:pragma_package_tt		Código del paquete
:pragma_topic_tt			Tópico(s) del Código: Introduce valores separados por comas
:pragma_usage_tt			Uso(s) del Código: Selecciona o introduce valores separados por comas
:prompt_2	 	Añadir submenús/desplegables/separadores y botones.
:prompt_3		Añadir nuevos paneles, arrastar para establecer el orden, clic para seleccionar.
:prompt_4		Añadir acciones a la izquierda/derecha/superior o inferior de los docks.
:prompt_5		Seleccionar los productores y consumidores. Haga clic derecho para añadir/quitar o edita directamente en el panel derecho.
:prompt_6		Ver el XML y el código Magik generados automáticamente.
:prompt_7		Definir los parámetros del módulo antes de generar el código.
:prompt_8		Selecciona un elemento a editar del Outlook Bar ...
:prompt_9		Algunos mensajes serán generados por la herramienta. Añade otros mensajes en el código de tu clase base.
:prompt_overwrite?	El fichero '#1.magik' del directorio '#2' ha sido modificado. 
:public_comments_build_gui|()|
##
##  Define el diseño de la Interfaz gráfica de usuario (GUI).
##
:public_comments_init_actions|()|
##
##  Inicializa las acciones para SELF.
##
:public_comments_quit|()|
##
##  Cierra el Diálogo.
##

:radio_group		Radio Group
:radio_item		Radio Button
:reactivate_dialog		Reactivar
:recordset		Recordset GUI Component
:refresh_a		F5
:refresh_app_list 	Refrescar la lista de aplicaciones
:refresh_view		Refrescar
:reinit			Reinicializar
:reinit_all		Limpiar TODOS los Docks
:reinit_dock		Limpiar este Dock
:remove_from_list		<-- Eliminar de la lista
:remove_from_requires		X-- Eliminar 
:reset_rendering           Resetear la posición de renderizado
:resizable_frame_prompt    El doble chevron (>>) indica que el diálogo será redimensionable una vez se active.
:rowcol			Row Column Grid
:rowcol_separator	Row Column Separator

:save_as			Guardar como ...
:save_dialog_xml		Guardar el diálogo como XML
:save_to_file		Guardar
:select_mode		Seleccionar / Arrastrar / Editar un elemento ... 
:select_module_path	Seleccione el directorio del módulo ...
:select_prompt		Haga clic para seleccionar el '# 1'    id=#2
:set_module_path			Directorio
:show_rowcol_cells	¿Mostrar Row Column Grid?
:simple_list_item		Simple List
:slider_item		Slider
:snapshot		Instantánea
:snapshot_tt	         Instantánea(s) a : #1\*.png
:sort_messages   		Ordenar Mensajes
:statusbar		Barra de estado
:style_choice_item	Style Choice
:supplimentary_gui_class_file_header
##% text_encoding = iso8859_1
#### 
####  Autogenerado por Dialog Designer v#4 : #1 
####
####  System.user_mame = #2
####
####  Código SUPLEMENTARIO para la clase '#3'
####    - añade/redefine código aquí, no será modificado automáticamente.

:tab_box			Tab Box
:tabular_list		Tabular List
:test			  	Test 
:text_choice_item	        	Text Choice
:text_item		Text Input
:text_window 		Text Window
:toggle_item		Check Box
:toolbar_action_definitions		
##
	## Acciones de la barra de herramientas (Toolbar Actions) ...
	##

:tree_item		Tree List

:unit_text_item		Unit Text Input
:use_databus		Databus
:use_docks		Docks
:use_magik_xml		Magik / XML
:use_menubar		Barra de Menú
:use_messages		Mensajes Adicionales
:use_module_properties		Propiedades del módulo ... 
:use_statusbar		Barra de estado
:user_messages_search_tt   Introduce el texto a buscar ...

:warning_used_dialog_class		La clase diálogo '# 1' no es única.
:window_stack			Window Stack

:xml			XML
:xml_creation_header 	<!-- Autogenerado por Dialog Designer para el usuario #1 en #2 -->

:yes_always		Sí, Siempre.
