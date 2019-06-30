public
fleschKincaidGradeLevelForString: aString
	"Flesch-Kincaid Grade Level <http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests>"

	| reachability totalWords totalSentences alphanumeric totalSyllables score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	alphanumeric := reachability alphanumericSentencesInString: aString.
	totalSyllables := reachability syllablesInString: alphanumeric.
	score := 0.39 * (totalWords / totalSentences)
		+ (11.8 * (totalSyllables / totalWords) - 15.59).
	^ score round: 1
