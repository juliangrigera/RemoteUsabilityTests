rendering
renderConfigurationPropertiesOn: html
	self task properties
		do: [ :property | 
			html
				tbsFormGroup: [ html label
						for: 'prop' , property name;
						with: property name uncameled.
					html tbsHelpBlock: property description.
					html textArea
						on: #value of: property;
						tbsFormControl;
						id: 'prop' , property name;
						placeholder: 'Provide a value for this property' ] ]