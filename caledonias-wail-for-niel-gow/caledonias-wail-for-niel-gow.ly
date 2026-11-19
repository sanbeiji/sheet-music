\version "2.24.0"

\header {
  title = "Caledonia's Wail For Niel Gow"
  composer = "Traditional / Niel Gow"
  arranger = "Arr. Joseph Lewis • https://sanbeiji.com"
  meter = "Strathspey"
  source = "https://thesession.org/tunes/12229#setting30773"
  transcriber = "ceolachan"
  tagline = ##f
}

\score {
  \new Staff \with {
    instrumentName = "Double bass"
    midiInstrument = "cello"
  }
  \relative c {
    \clef bass
    \key b \minor
    \time 4/4
    % Beam strictly by quarter-note beat for clean Strathspey grouping
    \set Timing.beamExceptions = #'()
    \partial 8

    % Part A (Bass Clef)
    fis8 |
    d16 b8.\trill b8. cis16 d8. e16 \grace { d32( e) } fis8 b |
    a8. fis16 \grace { d32( e) } fis8. e16 d8 a a fis'16 e |
    d16 b8.\trill b8. cis16 d8. e16 \grace { d32( e) } fis8 g' |
    fis8. d16 e16( d) cis16.( d32) b4 b8 cis16 d |
    d16 b8.\trill b8. cis16 d8. e16 \grace { d32( e) } fis8. b16 |
    a16 fis8. \grace { d32( e) } fis8. e16 d8. e32 fis a,8 fis16 e |
    d16 b8.\trill b8. cis16 d8. e16 \grace { d32( e) } fis8 g' |
    fis8. d16 e16( d) cis16 d b4 b8 \bar "||"

    % Part B (Tenor Clef)
    \partial 8
    fis16 ais |
    b8. cis16 \grace { b32( cis) } d8. cis16 b8.\trill a16 fis8. d16 |
    a'16 fis8. \grace { d32( e) } fis8. e16 d8 a a fis'16 ais |
    b8. cis16 \grace { b32( cis) } d8. cis16 b8. a16 fis16 ais b cis |
    d8 fis e16 d cis e b16. d32 fis16. d32 b8 \clef tenor d16 e |
    fis8 <fis d'>-. <fis d'>-. e16. d32 cis8 <cis a'>-. <cis a'>-. d16. cis32 |
    <d b'>8. cis'16 d16\trill cis d eis
    fis8 \clef bass <fis, ais> <fis ais>\fermata d16 e |
    <d fis>8-. <d fis>-. <d fis>-. cis16 d <cis e>8-. <cis e>-. <cis e>-.\fermata d16( cis) |
    b8 cis d eis fis8. ais,16 b4 b8 \bar ":|."
  }
  \layout { }
  \midi {
    \tempo 4 = 45
  }
}