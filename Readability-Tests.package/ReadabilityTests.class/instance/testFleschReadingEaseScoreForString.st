tests
testFleschReadingEaseScoreForString
	self
		assert:
			((Readability fleschReadingEaseScoreForString: 'A string') className
				includesSubstring: 'Float')
		equals: true
