
# This sample script illustrates how to cycle over all schematic views in the design,
# and change all ports and netlabels called 'vdd' to 'VDD'
#
# After loading the script, there are two functions:
# fix_vdd_names: renames ports and netlabels in the current cell from 'vdd' to 'VDD'
# fixall: iterates through all schematic views in the database, calling 'fix_vdd_names'


# find all ports called 'vdd' and change them to 'VDD' (in the current view)
proc fix_vdd_names { args } {
	find port vdd
	property set -system Name -value VDD
	find netlabel vdd
	property set -system Name -value VDD
}

proc ForEachSchematicView { UserProcName } {
	mode renderoff
	set count 0
	set cells [ database cells ]
	foreach cell $cells {
		# traverse all interface views
		set interfaces [ database interfaces -cell $cell ]
		foreach interface $interfaces {
			# traverse all schematic views
			set views [ database views -cell $cell -type schematic -interface $interface ]
			foreach view $views {
				# puts "Opening schematic($view) of cell $cell"
				cell open -cell $cell -view $view -type schematic -interface $interface
				eval "$UserProcName $cell $view $interface"
				incr count
			}
		}
	}
	mode renderon
	return $count
}

proc fixall {} {
	set n [ForEachSchematicView fix_vdd_names]
	puts "$n views processed"
}
