public
automatedReadabilityIndexForString: aString
	"Automated Readability Index <http://en.wikipedia.org/wiki/Automated_Readability_Index>"

	| score dict |
	score := self automatedReadabilityIndexScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict at: 'Ages' put: (self automatedReadabilityIndexAgesForScore: score).
	dict at: 'U.S.A. School Level' put: (self automatedReadabilityIndexGradeLevelForScore: score).
	^ dict
