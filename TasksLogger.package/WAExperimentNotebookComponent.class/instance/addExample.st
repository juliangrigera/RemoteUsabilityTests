callback
addExample
	| session |
	session := ExperimentSession id: '1' description: 'A hardcoded example session'.
	session
		addTask: (ExperimentTask id: '1' description: 'This description will not be displayed.' componentClassname: 'WelcomeComponent');
		addTask:
			(ExperimentTask
				id: '2'
				description: 'Ir a google y buscar una foto de <b>San Martín</b>.'
				componentClassname: 'TaskInstructionsComponent');
		addTask: (ExperimentTask id: '3' description: 'Ir a gmail y enviar la foro a Juan@gmail.com .' componentClassname: 'TaskInstructionsComponent');
		addTask: (ExperimentTask id: '4' description: 'This description will not be displayed.' componentClassname: 'NullComponent').
	session save