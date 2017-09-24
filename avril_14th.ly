\version "2.18.0"

gtr = \relative c' {
	% Settings
	\set TabStaff.restrainOpenStrings = ##t
	\override StringNumber #'transparent = ##t
	
	% Notes

	<g, b''>8 [ d'] <g e'\2> [ b] <g' b,,> d, g <g d'>16 [ e'] |

	<c, e'>8 [ e] g [ <c e>] <a,\6 d''> [ <e' c''>] <c'\4 b'> [ <b\4 g'>] |

	<g, b''>8 [ d'] <g e'\2> [ b] <g' b,,> d, g <g d'>16 [ e'] |
	
	<c, e'>8 [ e] g [ <c e>] a, [ e'] c' [ b] |

	<g, b'> [ g'] e <d b'>16 [ d'] <d,, a''>8  [ d'] e [ <d b'>] |

	<g, b'> [ g'] e <d b'>16 [ d'] <c, e'\2>8 [ g'] d\5 [ c] |

	\autoBeamOff
	
	a e''16\3 [ a,\4] fis'\2 [ b,\4] g'\2 [ d,] b''8 <fis\2 b,\4>16 a,8\4~ a16\4 e8 |

	a, e''16\3 [ a,\4] fis'\2 [ b,\4] g'\2 [ d,] b''8 <fis\2 b,\4>16 a,8\4~ a16\4 <e'\3 b\4>8 |

	\autoBeamOn

	<c, e g b>4~ <c e g b>8 a'8 <a, e' b'>4~ b4

}

\score { \new StaffGroup  <<
	\new Staff  { \clef "treble_8" << \gtr >> }
	\new TabStaff \with { stringTunings = #guitar-drop-d-tuning } \gtr
>> 
	%\midi { }
}
