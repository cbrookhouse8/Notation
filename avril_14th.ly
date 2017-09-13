\version "2.18.0"

gtr = \relative c' {
	% Settings
	\set TabStaff.restrainOpenStrings = ##t
	\override StringNumber #'transparent = ##t
	
	% Notes

	<g, b''>8 [ d'] <g e'\2> [ b] <g' b,,> [ d,] g16 [ <g d'>] e'8 |

	<c, e'>8 [ e] g [ <c e>] <a,\6 d''> [ <e' c''>] <c'\4 b'> [ <b\4 g'>] |
}

\score { \new StaffGroup  <<
  \new Staff  { \clef "treble_8" << \gtr >> }
  \new TabStaff \with { stringTunings = #guitar-drop-d-tuning } \gtr
>> }
