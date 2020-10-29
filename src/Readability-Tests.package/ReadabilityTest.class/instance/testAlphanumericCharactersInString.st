tests
testAlphanumericCharactersInString
	| r |
	r := Readability new.
	self assert: (r alphanumericCharactersInString: testString1) equals: 68.
	self assert: (r alphanumericCharactersInString: testString2) equals: 1149
