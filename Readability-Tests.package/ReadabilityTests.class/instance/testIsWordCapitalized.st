tests
testIsWordCapitalized
	| r |
	r := Readability new.
	self assert: (r isWordCapitalized: 'Capitalized') equals: true.
	self assert: (r isWordCapitalized: 'not capitalized') equals: false.
	self assert: (r isWordCapitalized: 'Y') equals: true.
	self assert: (r isWordCapitalized: 'n') equals: false
