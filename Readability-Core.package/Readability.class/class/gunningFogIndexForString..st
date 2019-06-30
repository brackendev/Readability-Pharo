public
gunningFogIndexForString: aString
	"Gunning Fog Index <http://en.wikipedia.org/wiki/Gunning_fog_index>"

	| reachability totalWords totalSentences complexWords score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	complexWords := reachability complexWordsInString: aString.
	score := 0.4 * (totalWords / totalSentences + (100.0 * (complexWords / totalWords))) asFloat.
	^ score round: 1
