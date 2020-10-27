tests
testFleschKincaidGradeLevelForString
	self assert: (Readability fleschKincaidGradeLevelForString: testString1) equals: 13.1.
	self assert: (Readability fleschKincaidGradeLevelForString: testString2)  equals: 11.0
