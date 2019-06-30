baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'Readability-Core'.
			spec package: 'Readability-Tests' with: [ spec requires: #('Readability-Core') ] ]
