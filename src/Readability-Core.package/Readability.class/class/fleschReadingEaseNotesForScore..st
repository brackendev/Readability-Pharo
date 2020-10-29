private
fleschReadingEaseNotesForScore: aFloat
	aFloat >= 90
		ifTrue: [ ^ 'Very easy to read. Easily understood by an average 11-year-old student.' ].
	aFloat >= 80
		ifTrue: [ ^ 'Easy to read. Conversational English for consumers.' ].
	aFloat >= 70
		ifTrue: [ ^ 'Fairly easy to read.' ].
	aFloat >= 60
		ifTrue: [ ^ 'Plain English. Easily understood by 13- to 15-year-old students.' ].
	aFloat >= 50
		ifTrue: [ ^ 'Fairly difficult to read.' ].
	aFloat >= 30
		ifTrue: [ ^ 'Difficult to read.' ].
	^ 'Very difficult to read. Best understood by university graduates.'
