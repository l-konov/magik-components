:about_dialog_designer	Informazioni su Dialog Designer ...

:add_action		Aggiungi Action
:add_button		Aggiungi Bottone
:add_category		Aggiungi Categoria
:add_menu		Aggiungi Menu
:add_pane		Aggiungi Riquadro
:add_progressbar_pane	Aggiungi Barra di Avanzamento
:add_pulldown		Aggiungi Menu a discesa
:add_section		Nuova Sezione
:add_separator		Aggiungi Separatore
:add_stack_window	Aggiungi una Finestra allo stack
:add_sub_category	Aggiungi Sottocategoria
:add_submenu		Aggiungi Pullout Menu
:add_tab		Aggiungi tab
:add_to_list		Aggiungi alla lista -->
:add_to_requires	<-- Aggiungi
:add_toolbar		Nuova Barra degli strumenti
:alerts?		Mostra Avvisi?
:allow_overwrite?	Consenti Sovrascrittura?
:app			App :
:app_consumed_data_types	App CONSUMED Data Types
:app_produced_data_types	App PRODUCED Data Types
:auto_date_code?                Data auto-generata nel codice?
:auto_date_suppressed           Vedi la data del file.
:auto_generated
	#### 
	####  Generato in Automatico da Dialog Designer v#2 : #1
:auto_generated_magik_file_header
##% text_encoding = iso8859_1
#### 
####  Generato in Automatico da Dialog Designer v#4
####  su #1
####
####  Utente = #2
####

_package #3
$

:bad_base_class     La Classe Base deve iniziare con una lettera e
non può contenere le parole 'plugin' or 'framework'.
:bad_base_path Il percorso (#1) inserito nelle Proprietà del Modulo non è valido.
:bad_word_launch		
Il file della documentazione non può essere aperto automaticamente. 
#1

Avviare MS Word, quindi aprire il file. 

:base_class_def			Proprietà della Classe
:base_outlook_category_name	Categoria
:base_outlook_sub_category_name	Sub
:begin_loading_module
####################################################################
## 
## Caricamento del Modulo (#1) 
##
####################################################################
:begin_loading_module_definition
####################################################################
## 
## Caricamento della Definizione di Modulo (#1 @ #2) 
##
####################################################################
:build				Modulo
:build_and_activate		Genera / Attiva
:build_module			Genera ...
:build_module_def			Proprietà del Modulo
:build_module_description		Descrizione
:build_module_description_default	Descrizione del Modulo
:build_module_name	        	Nome/Versione
:build_module_name_default      	new_module_name    410
:build_module_requires		Requires
:build_module_requires_default
:button_item		Text Button

:canvas			Canvas
:change_to_tab		Spostamento al tab ...
:class_msg_txt_not_found   '#1' non trovato.  
:code			Magik / XML
:copy_element		Copia
:copy_image_files	Copia i files nel modulo '#1' 
:cut_element		Taglia

:databus		Databus
:dd_colour_choice_tt	Colore
:dd_dash_pattern_tt	Dash Pattern
:dd_date_time_item	Data/Orario
:dd_date_time_value_code
	#### 
	####   Restituisce il valore del dato dall'albero

	>> .items[:#1].tree_manager.data.an_element().value[:when]
:dd_documentation	Documentazione
:dd_fill_percentage_tt	Percentuale di riempimento
:dd_group_box		Group Box
:dd_hatch_pattern_tt	Modello di riempimento
:dd_line_end_style_tt	End Style
:dd_line_join_style_tt	Join Style
:dd_line_width_tt 	Spessore Linea
:dd_number_input	Number Input
:dd_outlook_bar		Outlook Bar
:dd_paned_window	Paned Window
:dd_point_style_tt	Point Style
:dd_release_notes	Note sullo sviluppo
:dd_tab_box		Tab Box
:dd_tabular_list	Tabular List
:dd_webpage		Download Website
:dd_window_stack	Window Stack
:default_product_def
default_product layered_product

title
	Auto-generated default product (Dialog Designer)
end

:defined_module_filter_label	Ricerca :
:defined_module_filter_tt	Inserire una combinazione di lettere per filtrare la lista sotto...
:defined_modules		Modulo #1 di #2 
:delete_container               Rimuove solo questo Container
:delete_current_dialog?		I dialog chiusi non sono cancellati ma possono essere riaperti visualizzati ed editati.
 
Vuoi chiudere questo dialog design?   [ #1 ]
:delete_dialog		Chiudi Dialog Design
:delete_element		Cancella
:delete_menubar		Cancella Menubar
:delete_pane		Cancella Riquadro
:delete_stack_window	Cancella lo stack
:delete_statusbar	Cancella Statusbar
:delete_tab		Cancella il tab corrente
:dialog			Dialog
:dialog_class		Classe Base
:dialog_class_default	default_class
:dialog_class_list	Elenco delle Classi
:dialog_consumed_data_types	Dialog CONSUMED Data Types
:dialog_description_default       	Descrizione del dialog di default
:dialog_designer	Dialog Designer [ #1 ]
:dialog_designer_help	... informazioni su Dialog Designer
:dialog_extra_slots	Extra Slot
:dialog_extra_slots_tt	... inserire i nomi degli slot separati da virgola ( es. extra_1,extra2,...)
:dialog_language	Lingua
:dialog_language_tt     Scegliere la lingua principale del dialog
:dialog_list		Lista dei Dialog
:dialog_method_list	Elenco dei metodi
:dialog_package		Package
:dialog_package_tt	Inserire il package (default = user)
:dialog_pragma		Pragma 
:dialog_produced_data_types	Dialog PRODUCED Data Types
:do_build_module	Genera il  Modulo
:dock_action		Action
:dock_bottom		In basso
:dock_left		Sinistra
:dock_pulldown		Pulldown
:dock_right		Destra
:dock_section		Sezione
:dock_toolbar		Toolbar
:dock_top		In alto
:docks			Docks
:drop_click_prompt	Clicca per inserire un elemento ...

:empty			Cancella TUTTO 
:end_loading
####################################################################
## 
## Caricamento del Modulo Completata.
##
####################################################################
:explore_code		Esplora il codice generato ...

:frame			Frame

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

:hide			Non Usare

:image_button_item	Image Button
:image_toggle_item	Image Toggle
:insert_prompt		#1 : Cliccare sull'area evidenziata per inserire ...     <Space> per tornare alla modalità di selezione
:invalid_module_name_and_version    Nome/Versione non valido.

:label_item		Etichetta
:load_dialog_xml	Carica il Dialog da file XML
:load_from_file		Apri
:loading_from_file      Caricamento del dialog da file XML: '#1'

:menubar		Menubar
:menubar_action_definitions		
##
	## Menubar Actions ...
	##
:message_find_next   Successivo
:message_find_prev   Precedente
:messages        	Messaggi
:missing_documentation_file	
File della documentazione non trovato.

#1

è stato spostato/rinominato o cancellato.

:missing_release_notes_file	
Release Notes file non trovato.

#1

è stato spostato/rinominato o cancellato.

:move_tab		Sposta il tab corrente (#1/#2) in  ...
:new_dialog		Nuovo
:new_dialog_class	dialog_class

:no_app_running		Nessuna Applicazione attiva
:no_base_path    	Inserire il percorso nelle Proprietà del Modulo.

:no_dragging_into_self	Trascinare un elemento su se stesso non è un operazione valida.
:no_title		Senza nome

:only_fixed_fonts_sizable	Utilizza il font_name='fixed' per permettere la scalatura del font.

:open_file_dir		Seleziona File o Directory
:outlook_bar_component	Outlook Bar
:overwrite_existing_class?	Il file importato usa la classe '#1'.   

Vuoi sovrascrivere il dialog '#1'?

Se no, premi 'No' e usa le Proprietà del Modulo per cambiare la classe
'#1' altrimenti.
:overwrite_existing_file?	Il file esiste già ... sovrascrivere?

:paned_window			Paned Window
:panel_separator		Separatore di pannello
:parsing_progres 			[#2] Caricamento di #1 ...
:paste_element			Incolla
:paste_element_tt_0		Incolla (Ctrl+V)  [ #1 ]
:paste_element_tt_n		Incolla (Ctrl+V)  [ #1 + #2 sub-elements]
:plugin_item			Plugin o Action
:pragma_classify_level_tt	Livello del codice
:pragma_package_tt		Code Package
:pragma_topic_tt		Argomento(i) del Codice: Inserisci i valori separati da virgola.
:pragma_usage_tt		Utilizzo del Codice: Seleziona un valore o inserisci più valori separati da virgola.
:prompt_2	 	Aggiunge sottomenu/pullouts/separatori e bottoni
:prompt_3		Aggiungi un nuovo riquadro, trascina per ordinare, clicca per selezionare
:prompt_4		Aggiungi le actions associate ad un pulsante a sinistra/destra/in alto/in basso del pannello.
:prompt_5	  Imposta i Data types per il Producer ed il Consumer. Premere il pulsante destro per aggiungere/rimuovere i data types oppure per modificare direttamente usare il pannello di destra.
:prompt_6		Visualizza il codice XML e Magik generato automaticamente.
:prompt_7		Inserire i parametri del modulo prima di generare il codice.
:prompt_8	Seleziona una Outlook Bar per visualizzare ...
:prompt_9		Alcuni messaggi sono generati automaticamente. Aggiungi altri messaggi a supporto del tuo codice #1'.
:prompt_overwrite?	Il file '#1.magik' nella directory '#2' è stato modificato.  
:public_comments_build_gui|()|
##
##  Define the GUI layout.
##
:public_comments_init_actions|()|
##
##  Inizializza le actions.
##
:public_comments_quit|()|
##
##  Chiude il dialog.
##

:radio_group		Radio Group
:radio_item		Radio Button
:reactivate_dialog	Attivazione
:recordset		Recordset GUI Component
:refresh_a		F5
:refresh_app_list 	Aggiorna la lista delle Applicazioni
:refresh_view		Aggiorna
:reinit			Ripristina
:reinit_all		Cancella TUTTI i Docks
:reinit_dock		Cancella questo Dock
:remove_from_list	<-- Elimina dalla lista
:remove_from_requires	X-- Elimina
:reset_rendering	Torna alla posizione iniziale 
:resizable_frame_prompt    Il doppio carattere >> indica che il dialog sarà dimensionabile una volta attivato.
:rowcol			Griglia
:rowcol_separator	Separatore

:save_as		Salva con nome ...
:save_dialog_xml	Salva il dialog in XML
:save_to_file		Salva
:select_mode		Seleziona / Trascina / Edita un elemento ... 
:select_module_path	Selezionare il percorso del Modulo ...
:select_prompt		Cliccare per selezionare  '#1'    id=#2
:set_module_path	Percorso
:show_rowcol_cells	Mostra Griglia?
:simple_list_item	Simple List
:slider_item		Slider
:snapshot		Istantanea
:snapshot_tt	        Istantanea su: #1\*.png
:sort_messages   	Ordinamento
:statusbar		Statusbar
:style_choice_item	Style Choice
:supplimentary_gui_class_file_header
##% text_encoding = iso8859_1
#### 
####  Generato in automatico dal Dialog Designer v#4 : #1 
####
####  Utente = #2
####
####  Codice Supplementare per la la classe gui '#3'
####    - Aggiungere/Ridefinire il codice qui, non sarà modificato dalla auto-generazione.

:tab_box		Tab Box
:tabular_list		Tabular List
:test			Test
:text_choice_item     	Text Choice
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
:use_messages		Messaggi Aggiuntivi
:use_module_properties	Proprietà del modulo
:use_statusbar		Statusbar
:user_messages_search_tt   Inserisci il testo da ricercare ...

:warning_used_dialog_class		La Classe '#1' del dialog non è univoca.
:window_stack			Window Stack

:xml			XML
:xml_creation_header 	<!-- Generato in automatico da Dialog Designer per l'utente #1 su #2 -->

:yes_always		Si, Sempre.
