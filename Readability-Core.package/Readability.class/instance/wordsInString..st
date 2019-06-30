private
wordsInString: aString
	| cleaned |
	cleaned := self alphanumericSentencesInString: aString.
	^ cleaned findTokens: ' '
