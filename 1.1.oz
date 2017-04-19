local

	fun {Largo L}
		{System.showInfo 1}
		{Largo L}		
	end
	
	L1
in
	L1 = [1 2 3 4]
	{System.showInfo L1.1}
	%R={Largo L1}
	case 1 of 1 then {System.showInfo "si"} end
	case 2 of 1 then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of [1 2] then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of 1|2 then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of 1|2|nil then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of 1|Tail then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of Head|Tail then {System.showInfo "si"} else {System.showInfo "no"} end
	case [1 2] of Head|Tail 
		then {System.showInfo Head} 
			case Tail of Head|Tail 
				then {System.showInfo Head} 
					case Tail of Head|Tail 
						then {System.showInfo Head} 
						else {System.showInfo "fin"} 
					end
				else {System.showInfo "no"} 
			end
		else {System.showInfo "no"} 
	end
end