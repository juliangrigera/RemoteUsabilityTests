initialization
initialize
	super initialize.
	nameEditor := InPlacePropertyEditorComponent new.
	nameEditor headingLevel: 4.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		headingLevel: 4