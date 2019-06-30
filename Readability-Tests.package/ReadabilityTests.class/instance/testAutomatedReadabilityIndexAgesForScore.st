tests
testAutomatedReadabilityIndexAgesForScore
	self
		assert:
			((Readability automatedReadabilityIndexAgesForScore: randomNumber ) className
				includesSubstring: 'String')
		equals: true
