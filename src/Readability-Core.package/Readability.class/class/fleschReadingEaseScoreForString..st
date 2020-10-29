private
fleschReadingEaseScoreForString: aString
	"Flesch Reading Ease <http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests>"

	| reachability totalWords totalSentences alphanumeric totalSyllables score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	alphanumeric := reachability alphanumericSentencesInString: aString.
	totalSyllables := reachability syllablesInString: alphanumeric.
	score := 206.835 - (1.015 * (totalWords / totalSentences))
		- (84.6 * (totalSyllables / totalWords)).
	^ score round: 1
