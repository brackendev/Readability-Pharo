tests
testAutomatedReadabilityIndexScoreForString
	self
		assert:
			((Readability automatedReadabilityIndexScoreForString: 'A string') className
				includesSubstring: 'Float')
		equals: true
