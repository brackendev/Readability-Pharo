tests
testHasSuffixInString
	| r |
	r := Readability new.
	self assert: (r hasSuffix: 'ED' inString: 'worked').
	self deny: (r hasSuffix: 'es' inString: 'worked')