class ExperimentTask {

    constructor(name, notes, componentClassname, model) {
        this.name = name;
        this.notes = notes;
        this.componentClassname = componentClassname;
        this.model = model;
        this.koboldEvents = [];
    }

    setModel(model) {
        this.model = model;
    }

    logExternalKoboldEvent(event) {
        this.koboldEvents.push(event);
    }

    done() {
    }

    start() {
        if (this.componentClassname == 'SemaphoreWaitComponent') {
            BackgroundFacade.getSingleton().autoDoneOnSemaphore(this.model.semaphoreId);
        }
        if (this.componentClassname == 'SemaphoreSignalComponent') {
            BackgroundFacade.getSingleton().signalSemaphoreAndProceed(this.model.semaphoreId);
        }
        if (this.componentClassname == 'TaskInstructionsComponent') {
            // in case we come back with skip backwards to a started/finished task
            this.model.paused = false;
            this.model.ellapsedMs = 0;
            this.model.startTime = null;
        }     
    }

    static fromJson(taskJson) {
        return new ExperimentTask(
            taskJson.name,
            taskJson.notes,
            taskJson.componentClassname,
            taskJson.model
        );
    }
}
