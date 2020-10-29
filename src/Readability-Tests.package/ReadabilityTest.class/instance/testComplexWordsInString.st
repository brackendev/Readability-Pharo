tests
testComplexWordsInString
	| r |
	r := Readability new.
	self assert: (r complexWordsInString: testString1) equals: 3.
	self assert: (r complexWordsInString: testString2) equals: 12
