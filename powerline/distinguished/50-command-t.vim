call Pl#Statusline(
	\ Pl#Match('bufname("%")', 'GoToFile'),
	\
	\ Pl#Segment(' %{"Command-T"} ',
		\ Pl#HiCurrent(   Pl#FG(231), Pl#BG(240), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG(231), Pl#BG( 31), Pl#Attr('bold')),
		\ Pl#HiNonCurrent(Pl#FG(244), Pl#BG(234), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Segment(' %<%{Stl_GetCommandTLine()}',
		\ Pl#HiCurrent(   Pl#FG(247), Pl#BG(236)),
		\ Pl#HiInsert(    Pl#FG(117), Pl#BG( 24)),
		\ Pl#HiNonCurrent(Pl#FG(244), Pl#BG(234))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG(236)),
		\ Pl#HiInsert(    Pl#BG( 24)),
		\ Pl#HiNonCurrent(Pl#BG(234))
		\ ),
	\
	\ Pl#Segment(" %10(Match #%l%) ",
		\ Pl#HiCurrent(   Pl#FG(250), Pl#BG(240)),
		\ Pl#HiInsert(    Pl#FG(117), Pl#BG( 31)),
		\ Pl#HiNonCurrent(Pl#FG(244), Pl#BG(234))
		\ )
	\ )
