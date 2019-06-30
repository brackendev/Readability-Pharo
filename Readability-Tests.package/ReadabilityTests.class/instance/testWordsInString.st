tests
testWordsInString
	| r |
	r := Readability new.
	self assert: ((r wordsInString: '') size) equals: 0.
	self assert: ((r wordsInString: 'word') size) equals: 1.
	self assert: ((r wordsInString: 'words words') size) equals: 2.
	self assert: ((r wordsInString: testString1) size) equals: 13.
	self assert: ((r wordsInString: testString2) size) equals: 271
