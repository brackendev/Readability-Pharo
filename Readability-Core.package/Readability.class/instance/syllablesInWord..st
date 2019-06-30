private
syllablesInWord: aString
	"Based on objC-syllable-counter by Anthony Nichols <https://github.com/nicholjs/objC-syllable-counter>"

	| subsyl addsyl exceptionsOne exceptionsTwo lowercaseString replacedString wordSplit validWordParts syllables matchArray |
	subsyl := #('cial' 'tia' 'cius' 'cious' 'uiet' 'gious' 'geous' 'priest' 'giu' 'dge' 'ion' 'iou' 'sia$' '.che$' '.ched$' '.abe$' '.ace$' '.ade$' '.age$' '.aged$' '.ake$' '.ale$' '.aled$' '.ales$' '.ane$' '.ame$' '.ape$' '.are$' '.ase$' '.ashed$' '.asque$' '.ate$' '.ave$' '.azed$' '.awe$' '.aze$' '.aped$' '.athe$' '.athes$' '.ece$' '.ese$' '.esque$' '.esques$' '.eze$' '.gue$' '.ibe$' '.ice$' '.ide$' '.ife$' '.ike$' '.ile$' '.ime$' '.ine$' '.ipe$' '.iped$' '.ire$' '.ise$' '.ished$' '.ite$' '.ive$' '.ize$' '.obe$' '.ode$' '.oke$' '.ole$' '.ome$' '.one$' '.ope$' '.oque$' '.ore$' '.ose$' '.osque$' '.osques$' '.ote$' '.ove$' '.pped$' '.sse$' '.ssed$' '.ste$' '.ube$' '.uce$' '.ude$' '.uge$' '.uke$' '.ule$' '.ules$' '.uled$' '.ume$' '.une$' '.upe$' '.ure$' '.use$' '.ushed$' '.ute$' '.ved$' '.we$' '.wes$' '.wed$' '.yse$' '.yze$' '.rse$' '.red$' '.rce$' '.rde$' '.ily$' '.ne$' '.ely$' '.des$' '.gged$' '.kes$' '.ced$' '.ked$' '.med$' '.mes$' '.ned$' '.sed$' '.nce$' '.rles$' '.nes$' '.pes$' '.tes$' '.res$' '.ves$' 'ere$').
	addsyl := #('ia' 'riet' 'dien' 'ien' 'iet' 'iu' 'iest' 'io' 'ii' 'ily' '.oala$' '.iara$' '.ying$' '.earest' '.arer' '.aress' '.eate$' '.eation$' '[aeiouym]bl$' '[aeiou]{3}' '^mc' 'ism' '^mc' 'asm' '([^aeiouy])\1l$' '[^l]lien' '^coa[dglx].' '[^gq]ua[^auieo]' 'dnt$').
	exceptionsOne := #('abe' 'ace' 'ade' 'age' 'ale' 'are' 'use' 'ate' 'sense' 'resolve').
	exceptionsTwo := #('created').
	lowercaseString := aString asLowercase.
	replacedString := lowercaseString copyWithRegex: '[^a-z]' matchesReplacedWith: ''.
	wordSplit := replacedString allRegexMatches: '[aeiouy]+'.
	validWordParts := OrderedCollection new: wordSplit size.
	wordSplit
		do: [ :each | 
			each = ''
				ifFalse: [ validWordParts add: each ] ].
	syllables := 0.
	subsyl
		do: [ :each | 
			matchArray := OrderedCollection new: addsyl size.
			replacedString regex: each matchesCollect: [ :e | matchArray add: e ].
			syllables := syllables - matchArray size ].
	addsyl
		do: [ :each | 
			matchArray := OrderedCollection new: addsyl size.
			replacedString regex: each matchesCollect: [ :e | matchArray add: e ].
			syllables := syllables + matchArray size ].
	(exceptionsOne includes: lowercaseString)
		ifTrue: [ syllables := syllables - 1 ].
	(exceptionsTwo includes: lowercaseString)
		ifTrue: [ syllables := syllables + 1 ].
	syllables := syllables + validWordParts size.
	syllables = 0
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ syllables ]
