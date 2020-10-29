examples
examples
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