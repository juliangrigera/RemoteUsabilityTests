rendering
renderSummaryOn: html
	self halt.
	html heading: 'Experiment design ' , self protocol name.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html paragraph: self protocol notes ] ]