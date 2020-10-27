tests
testFleschReadingEaseScoreForString
	self
		assert: (Readability fleschReadingEaseScoreForString: testString1)
		equals: 24.4.
	self
		assert: (Readability fleschReadingEaseScoreForString: testString2)
		equals: 64.8