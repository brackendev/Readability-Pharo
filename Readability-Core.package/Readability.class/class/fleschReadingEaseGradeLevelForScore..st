private
fleschReadingEaseGradeLevelForScore: aFloat
	aFloat >= 90
		ifTrue: [ ^ '5' ].
	aFloat >= 80
		ifTrue: [ ^ '6' ].
	aFloat >= 70
		ifTrue: [ ^ '7' ].
	aFloat >= 60
		ifTrue: [ ^ '8-9' ].
	aFloat >= 50
		ifTrue: [ ^ '10-12' ].
	aFloat >= 30
		ifTrue: [ ^ 'College' ].
	^ 'College Graduate'
