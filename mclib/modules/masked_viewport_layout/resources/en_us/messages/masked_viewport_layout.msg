#% text_encoding = cp1252

:external_name		Masked Viewport		
:masking_mode		Masking Mode
:hard_mask		Hard Mask
:mask_fill		Mask Fill
:draw_mask		Draw Mask
:mask_draw_style	Mask Drawing Fill
:mask_draw_outline_style	Mask Drawing Outline
:masking_mode_ht	Restrict the view to only things that touch the area specified using: 
Trail - a closed trail is used and only objects that touch inside the trail are included. 
Selection - all selected objects are used and only objects that touch inside any of them are used.
:hard_mask_ht		When set to yes, all areas outside of the mask area are filled with the mask fill style. Otherwise, we restrict data to things that interact with the mask area even if they extend outside it.
:mask_fill_ht		Sets the fill color and transparency to be used for the masked area.
:mask_draw_style_ht	Set the style to be used for drawing the fill of the mask area when "Draw Mask" is set to yes. If you do not want to draw inside the mask, set the fill colour to "No Color" and the Fill percentage to 0%.
:mask_draw_outline_style_ht	Set the style to be used for drawing the outline of the mask area when "Draw Mask" is set to yes. If you do not want to draw the outline, set the foreground colour to match the background of the viewport.	
:draw_mask_ht		Set this to yes to configure this viewport to draw the actual mask area using the mask drawing fill style inside it and the "mask draw outline" around it. 