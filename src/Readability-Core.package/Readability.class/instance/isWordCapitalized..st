private
isWordCapitalized: aString
	| letter |
	letter := aString size > 1
		ifTrue: [ aString copyFrom: 1 to: 1 ]
		ifFalse: [ aString ].
	^ letter matchesRegex: '([A-Z])'
