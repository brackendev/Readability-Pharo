tests
testAutomatedReadabilityIndexForString
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'Score')
		equals: 9.7.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'Ages')
		equals: '13-14'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'U.S.A. School Level')
		equals: '8'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'Score')
		equals: 12.1.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'Ages')
		equals: '16-17'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'U.S.A. School Level')
		equals: '11'
