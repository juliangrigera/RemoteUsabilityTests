rendering
renderOkButtonOn: html
	html horizontalRule.
	html
		tbsForm: [ html tbsButton
				beDefault;
				callback: [ self answer ];
				value: 'Accept' ]