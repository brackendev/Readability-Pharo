"
A ReadabilityTest is a test class for testing the behavior of Readability.

"
Class {
	#name : #ReadabilityTest,
	#superclass : #TestCase,
	#instVars : [
		'testString1',
		'testString2'
	],
	#category : #'Readability-Tests'
}

{ #category : #running }
ReadabilityTest >> setUp [

	super setUp.
	testString1 := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.
	testString2 := 'Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battlefield of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this. But, in a larger sense, we can not dedicate, we can not consecrate, we can not hallow this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth.'
]

{ #category : #tests }
ReadabilityTest >> testAlphanumericCharactersInString [

	| r |
	r := Readability new.
	self
		assert: (r alphanumericCharactersInString: testString1)
		equals: 68.
	self
		assert: (r alphanumericCharactersInString: testString2)
		equals: 1149
]

{ #category : #tests }
ReadabilityTest >> testAlphanumericSentencesInString [

	| r |
	r := Readability new.
	self
		assert: (r alphanumericSentencesInString: testString1)
		equals:
		'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature'.
	self
		assert: (r alphanumericSentencesInString: testString2)
		equals:
		'Four score and seven years ago our fathers brought forth on this continent a new nation conceived in liberty and dedicated to the proposition that all men are created equal Now we are engaged in a great civil war testing whether that nation or any nation so conceived and so dedicated can long endure We are met on a great battlefield of that war We have come to dedicate a portion of that field as a final resting place for those who here gave their lives that that nation might live It is altogether fitting and proper that we should do this But in a larger sense we can not dedicate we can not consecrate we can not hallow this ground The brave men living and dead who struggled here have consecrated it far above our poor power to add or detract The world will little note nor long remember what we say here but it can never forget what they did here It is for us the living rather to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced It is rather for us to be here dedicated to the great task remaining before us that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion that we here highly resolve that these dead shall not have died in vain that this nation under God shall have a new birth of freedom and that government of the people by the people for the people shall not perish from the earth'
]

{ #category : #tests }
ReadabilityTest >> testAutomatedReadabilityIndexAgesForScore [

	self
		assert: (Readability automatedReadabilityIndexAgesForScore: 9.7)
		equals: '13-14'
]

{ #category : #tests }
ReadabilityTest >> testAutomatedReadabilityIndexForString [

	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1) at:
				 'Score')
		equals: 9.7.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1) at:
				 'Ages')
		equals: '13-14'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1) at:
				 'U.S.A. School Level')
		equals: '8'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2) at:
				 'Score')
		equals: 12.1.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2) at:
				 'Ages')
		equals: '16-17'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2) at:
				 'U.S.A. School Level')
		equals: '11'
]

{ #category : #tests }
ReadabilityTest >> testAutomatedReadabilityIndexSchoolLevelForScore [

	self
		assert:
		(Readability automatedReadabilityIndexGradeLevelForScore: 9.7)
		equals: '8'.
	self
		assert:
		(Readability automatedReadabilityIndexGradeLevelForScore: 12.1)
		equals: '11'
]

{ #category : #tests }
ReadabilityTest >> testAutomatedReadabilityIndexScoreForString [

	self
		assert:
		(Readability automatedReadabilityIndexScoreForString: testString1)
		equals: 9.7.
	self
		assert:
		(Readability automatedReadabilityIndexScoreForString: testString2)
		equals: 12.1
]

{ #category : #tests }
ReadabilityTest >> testColemanLiauIndexForString [

	self
		assert: (Readability colemanLiauIndexForString: testString1)
		equals: 14.9.
	self
		assert: (Readability colemanLiauIndexForString: testString2)
		equals: 9.1
]

{ #category : #tests }
ReadabilityTest >> testComplexWordsInString [

	| r |
	r := Readability new.
	self assert: (r complexWordsInString: testString1) equals: 3.
	self assert: (r complexWordsInString: testString2) equals: 12
]

{ #category : #tests }
ReadabilityTest >> testFleschKincaidGradeLevelForString [

	self
		assert: (Readability fleschKincaidGradeLevelForString: testString1)
		equals: 13.1.
	self
		assert: (Readability fleschKincaidGradeLevelForString: testString2)
		equals: 11.0
]

{ #category : #tests }
ReadabilityTest >> testFleschReadingEaseForString [

	self
		assert:
		((Readability fleschReadingEaseForString: testString1) at: 'Score')
		equals: 24.4.
	self
		assert: ((Readability fleschReadingEaseForString: testString1) at:
				 'U.S.A. School Level')
		equals: 'College Graduate'.
	self
		assert:
		((Readability fleschReadingEaseForString: testString1) at: 'Notes')
		equals:
		'Very difficult to read. Best understood by university graduates.'.
	self
		assert:
		((Readability fleschReadingEaseForString: testString2) at: 'Score')
		equals: 64.8.
	self
		assert: ((Readability fleschReadingEaseForString: testString2) at:
				 'U.S.A. School Level')
		equals: '8-9'.
	self
		assert:
		((Readability fleschReadingEaseForString: testString2) at: 'Notes')
		equals:
		'Plain English. Easily understood by 13- to 15-year-old students.'
]

{ #category : #tests }
ReadabilityTest >> testFleschReadingEaseNotesForScore [

	self
		assert: (Readability fleschReadingEaseNotesForScore: 120.2)
		equals:
		'Very easy to read. Easily understood by an average 11-year-old student.'
]

{ #category : #tests }
ReadabilityTest >> testFleschReadingEaseSchoolLevelForScore [

	self
		assert: (Readability fleschReadingEaseGradeLevelForScore: 120.2)
		equals: '5'
]

{ #category : #tests }
ReadabilityTest >> testFleschReadingEaseScoreForString [

	self
		assert: (Readability fleschReadingEaseScoreForString: testString1)
		equals: 24.4.
	self
		assert: (Readability fleschReadingEaseScoreForString: testString2)
		equals: 64.8
]

{ #category : #tests }
ReadabilityTest >> testGunningFogIndexForString [

	self
		assert: (Readability gunningFogIndexForString: testString1)
		equals: 14.4.
	self
		assert: (Readability gunningFogIndexForString: testString2)
		equals: 12.6
]

{ #category : #tests }
ReadabilityTest >> testHasSuffixInString [

	| r |
	r := Readability new.
	self assert: (r hasSuffix: 'ED' inString: 'worked').
	self deny: (r hasSuffix: 'es' inString: 'worked')
]

{ #category : #tests }
ReadabilityTest >> testIsWordCapitalized [

	| r |
	r := Readability new.
	self assert: (r isWordCapitalized: 'Capitalized').
	self deny: (r isWordCapitalized: 'not capitalized').
	self assert: (r isWordCapitalized: 'Y').
	self deny: (r isWordCapitalized: 'n')
]

{ #category : #tests }
ReadabilityTest >> testIsWordPolysyllableExcludeCommonSuffixes [

	| r |
	r := Readability new.
	self assert:
		(r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: false).
	self deny:
		(r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: true)
]

{ #category : #tests }
ReadabilityTest >> testPolysyllableWordsInStringExcludeCommonSuffixes [

	| r |
	r := Readability new.
	self
		assert:
		(r
			 polysyllableWordsInString: testString1
			 excludeCommonSuffixes: false)
		equals: 4.
	self
		assert:
		(r
			 polysyllableWordsInString: testString1
			 excludeCommonSuffixes: true)
		equals: 4.
	self
		assert:
		(r
			 polysyllableWordsInString: testString2
			 excludeCommonSuffixes: false)
		equals: 20.
	self
		assert:
		(r
			 polysyllableWordsInString: testString2
			 excludeCommonSuffixes: true)
		equals: 12
]

{ #category : #tests }
ReadabilityTest >> testSentenceCountInString [

	| r |
	r := Readability new.
	self assert: (r sentenceCountInString: testString1) equals: 1.
	self assert: (r sentenceCountInString: testString2) equals: 10
]

{ #category : #tests }
ReadabilityTest >> testSmogGradeForString [

	self
		assert: (Readability smogGradeForString: testString1)
		equals: 11.6.
	self
		assert: (Readability smogGradeForString: testString2)
		equals: 8.3
]

{ #category : #tests }
ReadabilityTest >> testSyllablesInString [

	| r |
	r := Readability new.
	self assert: (r syllablesInString: testString1) equals: 26.
	self assert: (r syllablesInString: testString2) equals: 367
]

{ #category : #tests }
ReadabilityTest >> testSyllablesInWord [

	| r |
	r := Readability new.
	self assert: (r syllablesInWord: 'The') equals: 1.
	self assert: (r syllablesInWord: 'Australian') equals: 4.
	self assert: (r syllablesInWord: 'platypus') equals: 3.
	self assert: (r syllablesInWord: 'is') equals: 1.
	self assert: (r syllablesInWord: 'seemingly') equals: 3.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'hybrid') equals: 2.
	self assert: (r syllablesInWord: 'of') equals: 1.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'mammal') equals: 2.
	self assert: (r syllablesInWord: 'and') equals: 1.
	self assert: (r syllablesInWord: 'reptilian') equals: 4.
	self assert: (r syllablesInWord: 'creature.') equals: 2
]

{ #category : #tests }
ReadabilityTest >> testWordsInString [

	| r |
	r := Readability new.
	self assert: (r wordsInString: '') size equals: 0.
	self assert: (r wordsInString: 'word') size equals: 1.
	self assert: (r wordsInString: 'words words') size equals: 2.
	self assert: (r wordsInString: testString1) size equals: 13.
	self assert: (r wordsInString: testString2) size equals: 271
]
