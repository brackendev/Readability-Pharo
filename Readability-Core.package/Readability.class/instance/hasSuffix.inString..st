private
hasSuffix: aSuffixString inString: aString
	^ '*' , aSuffixString match: aString
