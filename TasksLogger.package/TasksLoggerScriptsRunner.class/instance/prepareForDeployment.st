deployment
prepareForDeployment
	self
		registerNotebook;
		registerApi;
		removeDevelopmentToolbar;
		turnOffDebugging;
		unregisterDevelopmentApplications;
		startServer