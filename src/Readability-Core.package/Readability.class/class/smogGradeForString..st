public
smogGradeForString: aString
	"SMOG Grade <http://en.wikipedia.org/wiki/SMOG>"

	| reachability totalSentences totalPolysyllables score |
	reachability := self new.
	totalSentences := reachability sentenceCountInString: aString.
	totalPolysyllables := reachability polysyllableWordsInString: aString excludeCommonSuffixes: false.
	score := 1.043 * (totalPolysyllables * (30 / totalSentences) + 3.1291) sqrt.
	^ score round: 1
