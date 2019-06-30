tests
testFleschReadingEaseSchoolLevelForScore
	self
		assert:
			((Readability fleschReadingEaseGradeLevelForScore: randomNumber) className
				includesSubstring: 'String')
		equals: true
