tests
testIsWordPolysyllableExcludeCommonSuffixes
	| r |
	r := Readability new.
	self assert: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: false) equals: true.
	self assert: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: true) equals: false
