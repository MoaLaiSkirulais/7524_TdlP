functor import System Application define

	local A I in
		A=[10 1 2 3]		
		%{Browse {Length [1 2 3 4 5]}}
		{Length A I}
		%{Browse I}
		{System.showInfo I}
	end

    {Application.exit 0}
	
end