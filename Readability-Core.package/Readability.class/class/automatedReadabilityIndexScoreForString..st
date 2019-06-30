private
automatedReadabilityIndexScoreForString: aString
	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability alphanumericCharactersInString: aString.
	score := 4.71 * (alphanumCharsFound / wordsFound)
		+ (0.5 * (wordsFound / sentencesFound) - 21.43).
	^ score round: 1
