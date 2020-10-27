tests
testSyllablesInWord
	| r |
	r := Readability new.
	self assert: (r syllablesInWord: 'The') equals: 1.
	self assert: (r syllablesInWord: 'Australian') equals: 4.
	self assert: (r syllablesInWord: 'platypus') equals: 3.
	self assert: (r syllablesInWord: 'is') equals: 1.
	self assert: (r syllablesInWord: 'seemingly') equals: 3.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'hybrid') equals: 2.
	self assert: (r syllablesInWord: 'of') equals: 1.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'mammal') equals: 2.
	self assert: (r syllablesInWord: 'and') equals: 1.
	self assert: (r syllablesInWord: 'reptilian') equals: 4.
	self assert: (r syllablesInWord: 'creature.') equals: 2
