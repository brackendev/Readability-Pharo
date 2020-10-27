tests
testIsWordPolysyllableExcludeCommonSuffixes
	| r |
	r := Readability new.
	self
		assert: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: false).
	self
		deny: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: true)