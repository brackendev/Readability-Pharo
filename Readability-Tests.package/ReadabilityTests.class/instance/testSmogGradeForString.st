tests
testSmogGradeForString
	self assert: (Readability smogGradeForString: testString1) equals: 11.6.
	self assert: (Readability smogGradeForString: testString2) equals: 8.3
