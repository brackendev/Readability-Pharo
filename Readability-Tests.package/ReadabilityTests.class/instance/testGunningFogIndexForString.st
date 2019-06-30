tests
testGunningFogIndexForString
	self assert: (Readability gunningFogIndexForString: testString1) equals: 14.4.
	self assert: (Readability gunningFogIndexForString: testString2) equals: 12.6
