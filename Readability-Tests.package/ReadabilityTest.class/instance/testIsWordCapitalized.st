tests
testIsWordCapitalized
	| r |
	r := Readability new.
	self assert: (r isWordCapitalized: 'Capitalized').
	self deny: (r isWordCapitalized: 'not capitalized').
	self assert: (r isWordCapitalized: 'Y').
	self deny: (r isWordCapitalized: 'n')