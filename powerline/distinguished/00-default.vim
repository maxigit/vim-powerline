call Pl#Statusline(
	\ Pl#SegmentGroup(
		\ Pl#HiCurrent(   Pl#BG(2)),
		\ Pl#HiInsert(    Pl#BG( 2)),
		\ Pl#HiNonCurrent(Pl#BG(24)),
		\
		\ Pl#Segment("%{&modified?' ✘':''}",
			\ Pl#HiCurrent(   Pl#FG(0)),
			\ Pl#HiInsert(    Pl#FG(0)),
			\ Pl#HiNonCurrent(Pl#FG( 196))
			\ ),
		\ Pl#Segment(" %t ",
			\ Pl#HiCurrent(   Pl#FG(231), Pl#Attr('bold')),
			\ Pl#HiInsert(    Pl#FG(231), Pl#Attr('bold')),
			\ Pl#HiNonCurrent(Pl#FG(224), Pl#Attr('bold'))
			\ ),
		\ Pl#Segment("%{&readonly ? '$ro ' : ''}",
			\ Pl#HiCurrent(   Pl#FG(0)),
			\ Pl#HiInsert(    Pl#FG(0)),
			\ Pl#HiNonCurrent(Pl#FG( 196))
			\ ),
    \ Pl#Segment("%{Stl_GetBranch('$branch')}",
      \ exists('g:loaded_fugitive') && g:loaded_fugitive == 1,
      \
      \ Pl#HiCurrent(   Pl#FG(0), Pl#BG(2)),
      \ Pl#HiInsert(    Pl#FG(117), Pl#BG( 31)),
      \ Pl#HiNonCurrent(Pl#FG(117), Pl#BG(24))
      \ ),
		\  Pl#Segment("%H%W ",
			\ Pl#HiCurrent(   Pl#FG(0)),
			\ Pl#HiInsert(    Pl#FG(0)),
			\ Pl#HiNonCurrent(Pl#FG(117))
			\ ),
		\ Pl#Segment("%{Stl_GetSyntaxErrors('$line')}",
			\ exists('g:loaded_syntastic_plugin') && g:loaded_syntastic_plugin == 1,
			\
			\ Pl#HiCurrent(   Pl#FG(2), Pl#Attr('bold')),
			\ Pl#HiInsert(    Pl#FG(2), Pl#Attr('bold')),
			\ )
		\ ),
	\
	\
	\ Pl#Segment("%<%{Stl_GetCurrentFunction()}",
		\ exists('g:has_cfi') && g:has_cfi == 1,
		\
		\ Pl#HiCurrent(   Pl#FG(247), Pl#BG(2)),
		\ Pl#HiInsert(    Pl#FG(247), Pl#BG( 2))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG(2)),
		\ Pl#HiInsert(    Pl#BG( 2)),
		\ Pl#HiNonCurrent(Pl#BG(24))
		\ ),
	\
	\ Pl#Segment("%<%{Stl_GetRelativeDir()} ",
		\ Pl#HiCurrent(   Pl#FG(231), Pl#BG(2), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG( 231), Pl#BG( 2), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Segment("%{&fileformat} %{(&fenc == '' ? &enc : &fenc)} ",
		\ Pl#HiCurrent(   Pl#FG(0), Pl#BG(2)),
		\ Pl#HiInsert(    Pl#FG(0), Pl#BG( 2))
		\ ),
	\
	\ Pl#Segment(" $ft %{strlen(&ft) ? &ft : 'n/a'} ",
		\ Pl#HiCurrent(   Pl#FG(0), Pl#BG(2)),
		\ Pl#HiInsert(    Pl#FG(0), Pl#BG( 2)),
		\ ),
	\
	\ Pl#Segment(" %3p%% ",
		\ Pl#HiCurrent(   Pl#FG(0), Pl#BG(2)),
		\ Pl#HiInsert (   Pl#FG(0), Pl#BG(2)),
		\ Pl#HiNonCurrent(Pl#FG(117), Pl#BG(24))
		\ ),
	\
	\ Pl#SegmentGroup(
		\ Pl#HiCurrent(   Pl#BG(2)),
		\ Pl#HiInsert(    Pl#BG(2)),
		\ Pl#HiNonCurrent(Pl#BG(24)),
		\
		\ Pl#Segment(" $line %3l",
			\ Pl#HiCurrent(   Pl#FG(231), Pl#Attr('bold')),
			\ Pl#HiInsert(    Pl#FG(231), Pl#Attr('bold')),
			\ Pl#HiNonCurrent(Pl#FG(224))
			\ ),
		\ Pl#Segment(":%-2c ",
			\ Pl#HiCurrent(   Pl#FG(0)),
			\ Pl#HiInsert(    Pl#FG(0)),
			\ Pl#HiNonCurrent(Pl#FG(117))
			\ )
		\ )
	\ )
