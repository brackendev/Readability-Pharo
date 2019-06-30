tests
testColemanLiauIndexForString
	self assert: (Readability colemanLiauIndexForString: testString1) equals: 14.9.
	self assert: (Readability colemanLiauIndexForString: testString2) equals: 9.1
