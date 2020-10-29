private
polysyllableWordsInString: aString excludeCommonSuffixes: aBoolean
	| polysyllables words |
	polysyllables := 0.
	words := self wordsInString: aString.
	words
		do: [ :each | 
			(self isWordPolysyllable: each excludeCommonSuffixes: aBoolean)
				ifTrue: [ polysyllables := polysyllables + 1 ] ].
	^ polysyllables
