private
alphanumericCharactersInString: aString
	| count |
	count := 0.
	aString asArray
		do: [ :char | 
			char isAlphaNumeric
				ifTrue: [ count := count + 1 ] ].
	^ count
