tests
testPolysyllableWordsInStringExcludeCommonSuffixes
	| r |
	r := Readability new.
	self assert: (r polysyllableWordsInString: testString1 excludeCommonSuffixes: false) equals: 4.
	self assert: (r polysyllableWordsInString: testString1 excludeCommonSuffixes: true) equals: 4.
	self assert: (r polysyllableWordsInString: testString2 excludeCommonSuffixes: false) equals: 20.
	self assert: (r polysyllableWordsInString: testString2 excludeCommonSuffixes: true) equals: 12
