tests
testFleschReadingEaseSchoolLevelForScore
	self
		assert: (Readability fleschReadingEaseGradeLevelForScore: 120.2)
		equals: '5'