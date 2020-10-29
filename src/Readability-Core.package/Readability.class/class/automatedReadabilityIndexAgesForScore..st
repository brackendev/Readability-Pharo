private
automatedReadabilityIndexAgesForScore: aFloat
	aFloat >= 15
		ifTrue: [ ^ '23+' ].
	aFloat >= 14
		ifTrue: [ ^ '18-22' ].
	aFloat >= 13
		ifTrue: [ ^ '17-18' ].
	aFloat >= 12
		ifTrue: [ ^ '16-17' ].
	aFloat >= 11
		ifTrue: [ ^ '15-16' ].
	aFloat >= 10
		ifTrue: [ ^ '14-15' ].
	aFloat >= 9
		ifTrue: [ ^ '13-14' ].
	aFloat >= 8
		ifTrue: [ ^ '12-13' ].
	aFloat >= 7
		ifTrue: [ ^ '11-12' ].
	aFloat >= 6
		ifTrue: [ ^ '10-11' ].
	aFloat >= 5
		ifTrue: [ ^ '9-10' ].
	aFloat >= 4
		ifTrue: [ ^ '8-9' ].
	aFloat >= 3
		ifTrue: [ ^ '7-8' ].
	aFloat >= 2
		ifTrue: [ ^ '6-7' ].
	^ '5-6'
