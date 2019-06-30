tests
testFleschReadingEaseForString
	self
		assert: ((Readability fleschReadingEaseForString: testString1) at: 'Score')
		equals: 24.4.
	self
		assert:
			((Readability fleschReadingEaseForString: testString1)
				at: 'U.S.A. School Level')
		equals: 'College Graduate'.
	self
		assert: ((Readability fleschReadingEaseForString: testString1) at: 'Notes')
		equals: 'Very difficult to read. Best understood by university graduates.'.
	self
		assert: ((Readability fleschReadingEaseForString: testString2) at: 'Score')
		equals: 64.8.
	self
		assert:
			((Readability fleschReadingEaseForString: testString2)
				at: 'U.S.A. School Level')
		equals: '8-9'.
	self
		assert: ((Readability fleschReadingEaseForString: testString2) at: 'Notes')
		equals: 'Plain English. Easily understood by 13- to 15-year-old students.'
