baselines
baseline: spec
	<baseline>

	spec for: #'squeakCommon' do: [
		spec description: 'Using now XMLParser'.
		spec author: 'StephaneDucasse'.
		spec timestamp: '1/10/2013'.
		spec baseline: 'XMLParser' with: [
				spec repository: 'filetree:///opt/git/tcs1/XMLParser' ].
		spec 
			package: 'Soup-Core' with: [
				spec requires: #('XMLParser' ). ];
			package: 'Soup-Tests-Core' with: [
				spec requires: #('Soup-Core' ). ];
			package: 'Soup-Help' with: [
				spec requires: #('Soup-Core' ). ];
			package: 'Soup-XPath' with: [
				spec requires: #('Soup-Core' ). ];
			package: 'Soup-Zinc' with: [
				spec requires: #('Soup-Core' ). ].
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'Core' with: #('Soup-Core' 'Soup-XPath' );
			group: 'Tests' with: #('Soup-Tests-Core' ). ].

	spec for: #'gemstone' do: [
		spec baseline: 'XMLSupport' with: [
				spec repository: 'filetree:///opt/git/tcs1/XMLSupport' ].
		spec 
			package: 'SoupGemstone-Core' with: [
				spec requires: #('XMLSupport' ). ];
			package: 'Soup-Tests-Core' with: [
				spec requires: #('SoupGemstone-Core' ). ];
			package: 'Soup-Help' with: [
				spec requires: #('SoupGemstone-Core' ). ];
			package: 'Soup-XPath' with: [
				spec requires: #('SoupGemstone-Core' ). ];
			package: 'Soup-Zinc' with: [
				spec requires: #('SoupGemstone-Core' ). ].
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'Core' with: #('SoupGemstone-Core' );
			group: 'Tests' with: #('Soup-Tests-Core' ). ].
