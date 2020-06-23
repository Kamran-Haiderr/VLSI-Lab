
# This sample script illustrates how to cycle over all schematic views in the design,
# and size all ports, netlabels, and labels to a user specified size. The script shows 
# how to use TK to create a simple dialog to enter parameters for the script.


# resize all ports, netlabels, and labels (in the current view)
proc resize_text { new_portsize new_netlabelsize new_textlabelsize } {
	find none
	if { [string length $new_portsize] } {
		find port
		property set -system FontSize -value $new_portsize
	}
	if { [string length $new_netlabelsize] } {
		find netlabel
		property set -system FontSize -value $new_netlabelsize
	}
	if { [string length $new_textlabelsize] } {
		find textlabel
		property set -system FontSize -value $new_textlabelsize
	}
	find none
}

proc resizetext { new_portsize new_netlabelsize new_textlabelsize } {
	mode renderoff
	foreach cv [ database cellviews ] {
		set type [lindex $cv 4]
		if { $type == "schematic" || $type == "symbol" } {
			set design [lindex $cv 0]
			set cell [lindex $cv 1 ]
			set view [lindex $cv 2 ]
			set interface [lindex $cv 3]

			cell open -design $design -cell $cell -view $view -interface $interface -type $type
			resize_text $new_portsize $new_netlabelsize $new_textlabelsize
		}
	}
	mode renderon
}

proc ResizeText {} {
	global resize_portsize
	global resize_netlabelsize
	global resize_textlabelsize
	
	set resize_portsize 6pt
	set resize_netlabelsize 6pt
	set resize_textlabelsize 6pt
	
	toplevel .resize
	
	set portprompt [label .resize.portprompt -text "Port text size:" ]
	set portsize [entry .resize.portsize -textvariable resize_portsize ]
	
	set netlabelprompt [label .resize.netlabelprompt -text "Netlabel size:" ]
	set netlabelsize [entry .resize.netlabelsize -textvariable resize_netlabelsize ]
	
	set labelprompt [label .resize.labelprompt -text "Textlabel size:" ]
	set labelsize [entry .resize.labelsize -textvariable resize_textlabelsize ]
	
	set cmdframe [ frame .resize.buttons ]
	set ok [ button .resize.buttons.ok -text OK -command { \
				resizetext $resize_portsize $resize_netlabelsize $resize_textlabelsize ; \
				destroy .resize \
				} ]
	set quit [ button .resize.buttons.quit -text EXIT -command {destroy .resize} ]
	pack $ok -side left
	pack $quit -side right
	
	grid $portprompt $portsize -row 0 -sticky ew -padx 4 -pady {8 4}
	grid $netlabelprompt $netlabelsize -row 1 -sticky ew -padx 4 -pady {8 4}
	grid $labelprompt $labelsize -row 2 -sticky ew -padx 4 -pady {8 4}
	grid $cmdframe -column 0 -columnspan 2 -row 3 -sticky ew -padx 4 -pady {4 8}
	grid columnconfigure .resize 1 -weight 1
	focus $portsize
}

#workspace userbutton set ResizeText
ResizeText
