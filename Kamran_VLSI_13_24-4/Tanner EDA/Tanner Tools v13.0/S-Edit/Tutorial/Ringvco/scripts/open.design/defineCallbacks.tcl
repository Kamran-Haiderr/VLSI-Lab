proc checkValidWidth {} {
	set width [ stod [ property get W ] ]
	if { $width < 0.25e-6 } { return "width too small"}
	if { $width > 50e-6 } { return "width too large"}
}

proc setModelNameFromLength {} {
	set cellname [ property get MasterCell -system ]
	if  {[string equal $cellname "MOSFET_P" ] == 1 } {
	       set basemodel PMOS
	     } else {
	       set basemodel NMOS
	     }
	set len [ stod [ property get L ] ]
	if { $len < 0.25e-6 } { 
		property set model -value ${basemodel}1 
		return 
	}
	if { $len < 1e-6 } { 
		property set model -value ${basemodel}2 
		return 
	}
	property set model -value ${basemodel}3
}

puts "Loading Callbacks from [info script]"
