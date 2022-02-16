"
I am Readability, an object to determine readability and comprehension difficulty for contemporary English text.

Example invocations:
	string := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.
	Readability automatedReadabilityIndexForString: string.
	Readability colemanLiauIndexForString: string.
	Readability fleschKincaidGradeLevelForString: string.
	Readability fleschReadingEaseForString: string.
	Readability gunningFogIndexForString: string.
	Readability smogGradeForString: string.

"
Class {
	#name : #Readability,
	#superclass : #Object,
	#category : #'Readability-Core'
}

{ #category : #private }
Readability class >> automatedReadabilityIndexAgesForScore: aFloat [

	aFloat >= 15 ifTrue: [ ^ '23+' ].
	aFloat >= 14 ifTrue: [ ^ '18-22' ].
	aFloat >= 13 ifTrue: [ ^ '17-18' ].
	aFloat >= 12 ifTrue: [ ^ '16-17' ].
	aFloat >= 11 ifTrue: [ ^ '15-16' ].
	aFloat >= 10 ifTrue: [ ^ '14-15' ].
	aFloat >= 9 ifTrue: [ ^ '13-14' ].
	aFloat >= 8 ifTrue: [ ^ '12-13' ].
	aFloat >= 7 ifTrue: [ ^ '11-12' ].
	aFloat >= 6 ifTrue: [ ^ '10-11' ].
	aFloat >= 5 ifTrue: [ ^ '9-10' ].
	aFloat >= 4 ifTrue: [ ^ '8-9' ].
	aFloat >= 3 ifTrue: [ ^ '7-8' ].
	aFloat >= 2 ifTrue: [ ^ '6-7' ].
	^ '5-6'
]

{ #category : #public }
Readability class >> automatedReadabilityIndexForString: aString [

	"Automated Readability Index <http://en.wikipedia.org/wiki/Automated_Readability_Index>"

	| score dict |
	score := self automatedReadabilityIndexScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict
		at: 'Ages'
		put: (self automatedReadabilityIndexAgesForScore: score).
	dict
		at: 'U.S.A. School Level'
		put: (self automatedReadabilityIndexGradeLevelForScore: score).
	^ dict
]

{ #category : #private }
Readability class >> automatedReadabilityIndexGradeLevelForScore: aFloat [

	aFloat >= 14 ifTrue: [ ^ 'College' ].
	aFloat >= 13 ifTrue: [ ^ '12' ].
	aFloat >= 12 ifTrue: [ ^ '11' ].
	aFloat >= 11 ifTrue: [ ^ '10' ].
	aFloat >= 10 ifTrue: [ ^ '9' ].
	aFloat >= 9 ifTrue: [ ^ '8' ].
	aFloat >= 8 ifTrue: [ ^ '7' ].
	aFloat >= 7 ifTrue: [ ^ '6' ].
	aFloat >= 6 ifTrue: [ ^ '5' ].
	aFloat >= 5 ifTrue: [ ^ '4' ].
	aFloat >= 4 ifTrue: [ ^ '3' ].
	aFloat >= 3 ifTrue: [ ^ '2' ].
	aFloat >= 2 ifTrue: [ ^ '1' ].
	^ 'Kindergarten'
]

{ #category : #private }
Readability class >> automatedReadabilityIndexScoreForString: aString [

	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability alphanumericCharactersInString:
		                      aString.
	score := 4.71 * (alphanumCharsFound / wordsFound)
	         + (0.5 * (wordsFound / sentencesFound) - 21.43).
	^ score round: 1
]

{ #category : #public }
Readability class >> colemanLiauIndexForString: aString [

	"Coleman–Liau Index <http://en.wikipedia.org/wiki/Coleman%E2%80%93Liau_index>"

	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability alphanumericCharactersInString:
		                      aString.
	score := 5.88 * (alphanumCharsFound / wordsFound)
	         - (0.296 * (sentencesFound / wordsFound)) - 15.8 asFloat.
	^ score round: 1
]

{ #category : #examples }
Readability class >> examples [

	<sampleInstance>
	| string dict |
	string := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.
	dict := Dictionary new.
	dict
		at: 'Automated Readability Index'
		put: (Readability automatedReadabilityIndexForString: string).
	dict
		at: 'Coleman–Liau Index'
		put: (Readability colemanLiauIndexForString: string).
	dict
		at: 'Flesch-Kincaid Grade Level'
		put: (Readability fleschKincaidGradeLevelForString: string).
	dict
		at: 'Flesch Reading Ease'
		put: (Readability fleschReadingEaseForString: string).
	dict
		at: 'Gunning Fog Index'
		put: (Readability gunningFogIndexForString: string).
	dict at: 'SMOG Grade' put: (Readability smogGradeForString: string).
	^ dict
]

{ #category : #public }
Readability class >> fleschKincaidGradeLevelForString: aString [

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
]

{ #category : #public }
Readability class >> fleschReadingEaseForString: aString [

	"Flesch Reading Ease <http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests>"

	| score dict |
	score := Readability fleschReadingEaseScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict
		at: 'U.S.A. School Level'
		put: (Readability fleschReadingEaseGradeLevelForScore: score).
	dict
		at: 'Notes'
		put: (Readability fleschReadingEaseNotesForScore: score).
	^ dict
]

{ #category : #private }
Readability class >> fleschReadingEaseGradeLevelForScore: aFloat [

	aFloat >= 90 ifTrue: [ ^ '5' ].
	aFloat >= 80 ifTrue: [ ^ '6' ].
	aFloat >= 70 ifTrue: [ ^ '7' ].
	aFloat >= 60 ifTrue: [ ^ '8-9' ].
	aFloat >= 50 ifTrue: [ ^ '10-12' ].
	aFloat >= 30 ifTrue: [ ^ 'College' ].
	^ 'College Graduate'
]

{ #category : #private }
Readability class >> fleschReadingEaseNotesForScore: aFloat [

	aFloat >= 90 ifTrue: [ 
		^ 'Very easy to read. Easily understood by an average 11-year-old student.' ].
	aFloat >= 80 ifTrue: [ 
		^ 'Easy to read. Conversational English for consumers.' ].
	aFloat >= 70 ifTrue: [ ^ 'Fairly easy to read.' ].
	aFloat >= 60 ifTrue: [ 
		^ 'Plain English. Easily understood by 13- to 15-year-old students.' ].
	aFloat >= 50 ifTrue: [ ^ 'Fairly difficult to read.' ].
	aFloat >= 30 ifTrue: [ ^ 'Difficult to read.' ].
	^ 'Very difficult to read. Best understood by university graduates.'
]

{ #category : #private }
Readability class >> fleschReadingEaseScoreForString: aString [

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
]

{ #category : #public }
Readability class >> gunningFogIndexForString: aString [

	"Gunning Fog Index <http://en.wikipedia.org/wiki/Gunning_fog_index>"

	| reachability totalWords totalSentences complexWords score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	complexWords := reachability complexWordsInString: aString.
	score := 0.4
	         *
		         (totalWords / totalSentences
		          + (100.0 * (complexWords / totalWords))) asFloat.
	^ score round: 1
]

{ #category : #public }
Readability class >> smogGradeForString: aString [

	"SMOG Grade <http://en.wikipedia.org/wiki/SMOG>"

	| reachability totalSentences totalPolysyllables score |
	reachability := self new.
	totalSentences := reachability sentenceCountInString: aString.
	totalPolysyllables := reachability
		                      polysyllableWordsInString: aString
		                      excludeCommonSuffixes: false.
	score := 1.043
	         * (totalPolysyllables * (30 / totalSentences) + 3.1291) sqrt.
	^ score round: 1
]

{ #category : #private }
Readability >> alphanumericCharactersInString: aString [

	| count |
	count := 0.
	aString asArray do: [ :char | 
		char isAlphaNumeric ifTrue: [ count := count + 1 ] ].
	^ count
]

{ #category : #private }
Readability >> alphanumericSentencesInString: aString [

	| stripped flattened |
	stripped := aString allRegexMatches: '[a-zA-Z0-9 ]'.
	flattened := '' join: stripped.
	^ flattened withBlanksCondensed
]

{ #category : #private }
Readability >> complexWordsInString: aString [

	"Attemping the complex word suggestions at http://en.wikipedia.org/wiki/Gunning_fog_index"

	| count words polysyllable properNoun familiarJargon compound |
	count := 0.
	words := self wordsInString: aString.
	words do: [ :each | 
		polysyllable := self
			                isWordPolysyllable: each
			                excludeCommonSuffixes: true.
		properNoun := self isWordCapitalized: each.
		familiarJargon := false. "TODO"
		compound := false. "TODO"
		polysyllable & properNoun not & familiarJargon not & compound not 
			ifTrue: [ count := count + 1 ]
		].
	^ count
]

{ #category : #private }
Readability >> hasSuffix: aSuffixString inString: aString [

	^ '*' , aSuffixString match: aString
]

{ #category : #private }
Readability >> isWordCapitalized: aString [

	| letter |
	letter := aString size > 1
		          ifTrue: [ aString copyFrom: 1 to: 1 ]
		          ifFalse: [ aString ].
	^ letter matchesRegex: '([A-Z])'
]

{ #category : #private }
Readability >> isWordPolysyllable: aString excludeCommonSuffixes: aBoolean [

	| syllables |
	aString size < 3 ifTrue: [ ^ false ].
	syllables := self syllablesInWord: aString asLowercase.
	syllables > 2 ifTrue: [ 
		aBoolean
			ifTrue: [ 
				(self hasSuffix: 'ed' inString: aString asLowercase) not
				& (self hasSuffix: 'es' inString: aString asLowercase) not
				& (self hasSuffix: 'ing' inString: aString asLowercase) not 
					ifTrue: [ ^ true ]
				]
			ifFalse: [ ^ true ]
		].
	^ false
]

{ #category : #private }
Readability >> polysyllableWordsInString: aString excludeCommonSuffixes: aBoolean [

	| polysyllables words |
	polysyllables := 0.
	words := self wordsInString: aString.
	words do: [ :each | 
		(self isWordPolysyllable: each excludeCommonSuffixes: aBoolean) 
			ifTrue: [ polysyllables := polysyllables + 1 ]
		].
	^ polysyllables
]

{ #category : #private }
Readability >> sentenceCountInString: aString [

	| count periodValue lastChar |
	periodValue := Character codePoint: 46.
	count := aString occurrencesOf: periodValue.
	lastChar := aString string at: aString size.
	^ lastChar value = periodValue
		  ifTrue: [ count ]
		  ifFalse: [ count + 1 ]
]

{ #category : #private }
Readability >> syllablesInString: aString [

	| syllables words |
	syllables := 0.
	words := self wordsInString: aString.
	words do: [ :each | 
		syllables := syllables + (self syllablesInWord: each) ].
	^ syllables
]

{ #category : #private }
Readability >> syllablesInWord: aString [

	"Based on objC-syllable-counter by Anthony Nichols <https://github.com/nicholjs/objC-syllable-counter>"

	| subsyl exceptionsOne exceptionsTwo lowercaseString wordSplit syllables matchArray |
	subsyl := #( 'cial' 'tia' 'cius' 'cious' 'uiet' 'gious' 'geous'
	             'priest' 'giu' 'dge' 'ion' 'iou' 'sia$' '.che$' '.ched$'
	             '.abe$' '.ace$' '.ade$' '.age$' '.aged$' '.ake$' '.ale$'
	             '.aled$' '.ales$' '.ane$' '.ame$' '.ape$' '.are$'
	             '.ase$' '.ashed$' '.asque$' '.ate$' '.ave$' '.azed$'
	             '.awe$' '.aze$' '.aped$' '.athe$' '.athes$' '.ece$'
	             '.ese$' '.esque$' '.esques$' '.eze$' '.gue$' '.ibe$'
	             '.ice$' '.ide$' '.ife$' '.ike$' '.ile$' '.ime$' '.ine$'
	             '.ipe$' '.iped$' '.ire$' '.ise$' '.ished$' '.ite$'
	             '.ive$' '.ize$' '.obe$' '.ode$' '.oke$' '.ole$' '.ome$'
	             '.one$' '.ope$' '.oque$' '.ore$' '.ose$' '.osque$'
	             '.osques$' '.ote$' '.ove$' '.pped$' '.sse$' '.ssed$'
	             '.ste$' '.ube$' '.uce$' '.ude$' '.uge$' '.uke$' '.ule$'
	             '.ules$' '.uled$' '.ume$' '.une$' '.upe$' '.ure$'
	             '.use$' '.ushed$' '.ute$' '.ved$' '.we$' '.wes$' '.wed$'
	             '.yse$' '.yze$' '.rse$' '.red$' '.rce$' '.rde$' '.ily$'
	             '.ne$' '.ely$' '.des$' '.gged$' '.kes$' '.ced$' '.ked$'
	             '.med$' '.mes$' '.ned$' '.sed$' '.nce$' '.rles$'
	             '.nes$' '.pes$' '.tes$' '.res$' '.ves$' 'ere$' ).
	addsyl := #( 'ia' 'riet' 'dien' 'ien' 'iet' 'iu' 'iest' 'io' 'ii'
	             'ily' '.oala$' '.iara$' '.ying$' '.earest' '.arer'
	             '.aress' '.eate$' '.eation$' '[aeiouym]bl$'
	             '[aeiou]{3}' '^mc' 'ism' '^mc' 'asm' '([^aeiouy])\1l$'
	             '[^l]lien' '^coa[dglx].' '[^gq]ua[^auieo]'
	             'dnt$' ).
	exceptionsOne := #( 'abe' 'ace' 'ade' 'age' 'ale' 'are' 'use' 'ate'
	                    'sense' 'resolve' ).
	exceptionsTwo := #( 'created' ).
	lowercaseString := aString asLowercase.
	replacedString := lowercaseString
		                  copyWithRegex: '[^a-z]'
		                  matchesReplacedWith: ''.
	wordSplit := replacedString allRegexMatches: '[aeiouy]+'.
	validWordParts := OrderedCollection new: wordSplit size.
	wordSplit do: [ :each | 
		each = '' ifFalse: [ validWordParts add: each ] ].
	syllables := 0.
	subsyl do: [ :each | 
		matchArray := OrderedCollection new: addsyl size.
		replacedString
			regex: each
			matchesCollect: [ :e | matchArray add: e ].
		syllables := syllables - matchArray size
		].
	addsyl do: [ :each | 
		matchArray := OrderedCollection new: addsyl size.
		replacedString
			regex: each
			matchesCollect: [ :e | matchArray add: e ].
		syllables := syllables + matchArray size
		].
	(exceptionsOne includes: lowercaseString) ifTrue: [ 
		syllables := syllables - 1 ].
	(exceptionsTwo includes: lowercaseString) ifTrue: [ 
		syllables := syllables + 1 ].
	syllables := syllables + validWordParts size.
	^ syllables = 0
		  ifTrue: [ 1 ]
		  ifFalse: [ syllables ]
]

{ #category : #private }
Readability >> wordsInString: aString [

	| cleaned |
	cleaned := self alphanumericSentencesInString: aString.
	^ cleaned findTokens: ' '
]
