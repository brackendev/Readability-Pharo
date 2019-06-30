private
syllablesInString: aString
	| syllables words |
	syllables := 0.
	words := self wordsInString: aString.
	words do: [ :each | syllables := syllables + (self syllablesInWord: each) ].
	^ syllables
