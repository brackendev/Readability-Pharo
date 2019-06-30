private
isWordPolysyllable: aString excludeCommonSuffixes: aBoolean
	| syllables |
	aString size < 3
		ifTrue: [ ^ false ].
	syllables := self syllablesInWord: aString asLowercase.
	syllables > 2
		ifTrue: [ aBoolean
				ifTrue: [ (self hasSuffix: 'ed' inString: aString asLowercase) not & (self hasSuffix: 'es' inString: aString asLowercase) not
						& (self hasSuffix: 'ing' inString: aString asLowercase) not
						ifTrue: [ ^ true ] ]
				ifFalse: [ ^ true ] ].
	^ false
