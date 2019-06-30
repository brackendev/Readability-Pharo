tests
testSentenceCountInString
	| r |
	r := Readability new.
	self assert: (r sentenceCountInString: testString1) equals: 1.
	self assert: (r sentenceCountInString: testString2) equals: 10
