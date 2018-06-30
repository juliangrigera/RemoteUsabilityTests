class UIComponent {

    constructor(taskSpec) {
        this.id = taskSpec.id;
    }

    render() {
        if (! this.component) {
            this.component = this.buildComponent();
            this.notification = $("<div id=\"notification\" style=\"display: none;\"></div>"); 
            this.overlay = $("<div id=\"overlay\" style=\"display: none;\"></div>"); 
        }
        $("body").append(this.component);
        $("body").append(this.overlay);
        $("body").append(this.notification);
    }

    submitResults(results) {
        var taskReport = {
          taskId: this.id,
          results: results
        };
        BackgroundProxy.getSingleton().submitTaskReport(taskReport);
      }

    showOverlay() {
        $("#overlay").show();
    }

    hideOverlay() {
        $("#overlay").hide();
    }

    deactivate() {
        this.component.remove();
        this.notification.remove();
        this.overlay.remove();
    }

    done() {
        BackgroundProxy.getSingleton().activeComponetIsDone();
    }

 

}