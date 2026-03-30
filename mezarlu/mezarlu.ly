\header {
	title = "Mezarlu"
}

melody = \relative {
	\clef treble
	\time 4/4
	%\key d \minor

	% double repeat bar at the first measure.
	\once \override Score.BreakAlignment.break-align-orders =
	#(make-vector 3 '(instrument-name
		left-edge
		ambitus
		breathing-sign
		clef
		key-signature
		time-signature
		staff-bar
		custos))
	\once \override Staff.TimeSignature.space-alist =
	#'((first-note . (fixed-space . 2.0))
		(right-edge . (extra-space . 0.5))
       ;; free up some space between time signature
       ;; and repeat bar line
       (staff-bar . (extra-space . 1)))
	\bar ".|:"

	\repeat volta 2 {
		%1
		d'8 d4 d8 fis4 g
		a8 a4 bes8 cis4 \tuplet 3/2 {bes8( a g)}
		a1~
		a1
	} 
	%5
	bes8 a4 bes8 a4 g \break
	a8 g4 a8 g4 fis
	<fis d>1~
	<fis d>2. r4
	%9
	a8 g4 a8 g4 fis
	fis8 ees4 fis8 ees4 d
	d1~
	d8 ees16( d cis8 d ees e f fis)

	\repeat volta 3 {
		%13
		g1~
		g2 g2\turn
		a1~ a1
		bes1
		cis1
		d1~ d1 \break
		%21
		ees8 d4 ees8 d4 c 
		d8 c4 d8 c4 bes 
		a1~ a1
		%25
		c8 bes4 c8 bes4 a \break
		a8 g4 a8 g4 fis
		fis1~ fis1
		%28
		a8 g4 a8 g4 fis
		fis8 ees4 fis8 ees4 d 

	}
	
	\alternative {
		{ %1st & 2nd repeats
			d1~
			d8 ees16( d cis8 d ees e f fis) \break
		}
		{ %3rd - 5th repeats
			% todo: this needs to repeat 3 or more times at the end.
			d1~
			
		}

	}
	\repeat volta 3 {
		d8^\markup { \italic \tiny "Repeat at least 3x and fade out." } d4 d8 fis4 g
		a8 a4 bes8 cis4 \tuplet 3/2 {bes8 a g}
		a1~
		a1
	}


}

harmonies = \chordmode {
	d1 d d d
	g:m a d d
	c:m c:m
	d d
	g:m g:m
	f f
	ees
	a:7
	d d 
	c:m c:m
	d d 
	ees ees
	d d
	c:dim ees
	d:1 d
}

\score {
	<<
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new MainTune= "one" { \melody }
	>>
	\layout { }
	\midi { }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

