public
fleschReadingEaseForString: aString
	"Flesch Reading Ease <http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests>"

	| score dict |
	score := Readability fleschReadingEaseScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict
		at: 'U.S.A. School Level'
		put: (Readability fleschReadingEaseGradeLevelForScore: score).
	dict
		at: 'Notes'
		put: (Readability fleschReadingEaseNotesForScore: score).
	^ dict
