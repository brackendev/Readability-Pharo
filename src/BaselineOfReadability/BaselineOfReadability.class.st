"
BaselineOfReadability is the BaselineOf subclass for Readability.

"
Class {
	#name : #BaselineOfReadability,
	#superclass : #BaselineOf,
	#category : #BaselineOfReadability
}

{ #category : #baselines }
BaselineOfReadability >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec package: 'Readability-Core'.
		spec
			package: 'Readability-Tests'
			with: [ spec requires: #( 'Readability-Core' ) ]
		]
]
