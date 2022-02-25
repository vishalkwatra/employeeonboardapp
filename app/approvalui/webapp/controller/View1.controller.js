sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("approvalui.controller.View1", {
            onInit: function () {
                var oModel = new sap.ui.model.json.JSONModel();
                oModel.setData({
                    employee: {
                        "firstName": "test",
                        "lastName": "",
                        "country": "",
                        "hireDate": new Date,
                        "jobTitle": ""
                    }
                });
                this.getView().setModel(oModel, "employee");
                var sPath = "/employee/";
                this.getView().bindElement('employee>' + sPath);
            },
            onPressSend: function(){
                
            }
        });
    });