tests
testFleschReadingEaseNotesForScore
	self
		assert: (Readability fleschReadingEaseNotesForScore: 120.2)
		equals: 'Very easy to read. Easily understood by an average 11-year-old student.'