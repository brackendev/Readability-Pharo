private
alphanumericSentencesInString: aString
	| stripped flattened |
	stripped := aString allRegexMatches: '[a-zA-Z0-9 ]'.
	flattened := '' join: stripped.
	^ flattened withBlanksCondensed
