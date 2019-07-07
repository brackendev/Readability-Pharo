tests
testAutomatedReadabilityIndexSchoolLevelForScore
	self
		assert: (Readability automatedReadabilityIndexGradeLevelForScore: 9.7)
		equals: '8'.
	self
		assert: (Readability automatedReadabilityIndexGradeLevelForScore: 12.1)
		equals: '11'