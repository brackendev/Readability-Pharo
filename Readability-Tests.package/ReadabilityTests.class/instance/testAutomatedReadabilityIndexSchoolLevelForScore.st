tests
testAutomatedReadabilityIndexSchoolLevelForScore
	self
		assert:
			((Readability automatedReadabilityIndexGradeLevelForScore: randomNumber)
				className includesSubstring: 'String')
		equals: true
