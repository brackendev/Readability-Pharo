private
automatedReadabilityIndexGradeLevelForScore: aFloat
	aFloat >= 14
		ifTrue: [ ^ 'College' ].
	aFloat >= 13
		ifTrue: [ ^ '12' ].
	aFloat >= 12
		ifTrue: [ ^ '11' ].
	aFloat >= 11
		ifTrue: [ ^ '10' ].
	aFloat >= 10
		ifTrue: [ ^ '9' ].
	aFloat >= 9
		ifTrue: [ ^ '8' ].
	aFloat >= 8
		ifTrue: [ ^ '7' ].
	aFloat >= 7
		ifTrue: [ ^ '6' ].
	aFloat >= 6
		ifTrue: [ ^ '5' ].
	aFloat >= 5
		ifTrue: [ ^ '4' ].
	aFloat >= 4
		ifTrue: [ ^ '3' ].
	aFloat >= 3
		ifTrue: [ ^ '2' ].
	aFloat >= 2
		ifTrue: [ ^ '1' ].
	^ 'Kindergarten'
