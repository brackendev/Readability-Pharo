tests
testSyllablesInString
	| r |
	r := Readability new.
	self assert: (r syllablesInString: testString1) equals: 26.
	self assert: (r syllablesInString: testString2) equals: 367
