private
complexWordsInString: aString
	"Attemping the complex word suggestions at http://en.wikipedia.org/wiki/Gunning_fog_index"

	| count words polysyllable properNoun familiarJargon compound |
	count := 0.
	words := self wordsInString: aString.
	words
		do: [ :each | 
			polysyllable := self isWordPolysyllable: each excludeCommonSuffixes: true.
			properNoun := self isWordCapitalized: each.
			familiarJargon := false.	"TODO"
			compound := false.	"TODO"
			polysyllable & properNoun not & familiarJargon not & compound not
				ifTrue: [ count := count + 1 ] ].
	^ count
