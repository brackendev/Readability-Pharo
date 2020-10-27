tests
testAutomatedReadabilityIndexAgesForScore
	self
		assert: (Readability automatedReadabilityIndexAgesForScore: 9.7)
		equals: '13-14'