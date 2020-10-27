tests
testAutomatedReadabilityIndexScoreForString
	self
		assert: (Readability automatedReadabilityIndexScoreForString: testString1)
		equals: 9.7.
	self
		assert: (Readability automatedReadabilityIndexScoreForString: testString2)
		equals: 12.1