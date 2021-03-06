rendering-protocols
renderProtocolsOn: html
	html
		tbsFormGroup: [ html heading
				level: 3;
				with: 'Protocols'.
			self experimentSession protocols
				ifNotEmpty: [ :protocols | 
					html
						tbsTable: [ html
								tableHead: [ html
										tableHeading: 'Protocol name';
										tableHeading: 'Access code';
										tableHeading: 'Actions' ].
							html
								tableBody: [ protocols do: [ :protocol | self renderProtocol: protocol on: html ] ] ] ]
				ifEmpty: [ html paragraph: 'There are no protocols in this experiment' ] ].
	self renderProtocolsInputOn: html