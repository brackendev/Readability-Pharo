public
colemanLiauIndexForString: aString
	"Coleman–Liau Index <http://en.wikipedia.org/wiki/Coleman%E2%80%93Liau_index>"

	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability
		alphanumericCharactersInString: aString.
	score := 5.88 * (alphanumCharsFound / wordsFound)
		- (0.296 * (sentencesFound / wordsFound)) - 15.8 asFloat.
	^ score round: 1
