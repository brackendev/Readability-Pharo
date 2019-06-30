tests
testHasSuffixInString
	| r |
	r := Readability new.
	self assert: (r hasSuffix: 'ED' inString: 'worked') equals: true.
	self assert: (r hasSuffix: 'es' inString: 'worked') equals: false
