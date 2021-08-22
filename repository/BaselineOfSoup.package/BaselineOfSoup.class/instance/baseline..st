baselines
baseline: spec
	<baseline>
	self baselineXMLParser: spec.
	spec
		for: #squeakCommon
		do: [ spec description: 'Using now XMLParser'.
			spec author: 'PaulDeBruicker'.
			spec timestamp: '8/22/2021'.
			spec
				package: 'Soup-Core' with: [ spec requires: #('XMLParser') ];
				package: 'Soup-Tests-Core'
					with: [ spec requires: #('Soup-Core') ];
				package: 'Soup-Help' with: [ spec requires: #('Soup-Core') ];
				package: 'Soup-XPath' with: [ spec requires: #('Soup-Core') ];
				package: 'Soup-Zinc' with: [ spec requires: #('Soup-Core') ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Soup-Core' 'Soup-XPath');
				group: 'Tests' with: #('Soup-Tests-Core') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'SoupGemstone-Core'
					with: [ spec requires: #('XMLParser') ];
				package: 'Soup-Tests-Core'
					with: [ spec requires: #('SoupGemstone-Core') ];
				package: 'Soup-Help'
					with: [ spec requires: #('SoupGemstone-Core') ];
				package: 'Soup-XPath'
					with: [ spec requires: #('SoupGemstone-Core') ];
				package: 'Soup-Zinc'
					with: [ spec requires: #('SoupGemstone-Core') ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('SoupGemstone-Core');
				group: 'Tests' with: #('Soup-Tests-Core') ]