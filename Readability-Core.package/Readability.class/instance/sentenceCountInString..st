private
sentenceCountInString: aString
	| count periodValue lastChar |
	periodValue := Character codePoint: 46.
	count := aString occurrencesOf: periodValue.
	lastChar := aString string at: aString size.
	lastChar value = periodValue
		ifTrue: [ ^ count ]
		ifFalse: [ ^ count + 1 ]
