\version "2.18.0"

gtr = \relative c' {
	% Settings
	\set TabStaff.restrainOpenStrings = ##t
	\override StringNumber #'transparent = ##t
	
	% Notes

	a8 c16 d a d e f g, a b e, f a c e
}

\score { \new StaffGroup  <<
  \new Staff  { \clef "treble_8" << \gtr >> }
  \new TabStaff \with { stringTunings = #guitar-drop-d-tuning } \gtr
>> }
