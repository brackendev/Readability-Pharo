tests
testFleschReadingEaseNotesForScore
	self
		assert:
			((Readability fleschReadingEaseNotesForScore: randomNumber) className
				includesSubstring: 'String')
		equals: true
