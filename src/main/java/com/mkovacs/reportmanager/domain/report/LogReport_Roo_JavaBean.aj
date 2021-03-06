// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mkovacs.reportmanager.domain.report;

import com.mkovacs.reportmanager.domain.report.Application;
import com.mkovacs.reportmanager.domain.report.Dates;
import com.mkovacs.reportmanager.domain.report.Device;
import com.mkovacs.reportmanager.domain.report.Log;
import com.mkovacs.reportmanager.domain.report.LogReport;

privileged aspect LogReport_Roo_JavaBean {
    
    public Device LogReport.getDevice() {
        return this.device;
    }
    
    public void LogReport.setDevice(Device device) {
        this.device = device;
    }
    
    public String LogReport.getMessage() {
        return this.message;
    }
    
    public void LogReport.setMessage(String message) {
        this.message = message;
    }
    
    public Application LogReport.getApplication() {
        return this.application;
    }
    
    public void LogReport.setApplication(Application application) {
        this.application = application;
    }
    
    public String LogReport.getCauseStackTrace() {
        return this.causeStackTrace;
    }
    
    public void LogReport.setCauseStackTrace(String causeStackTrace) {
        this.causeStackTrace = causeStackTrace;
    }
    
    public String LogReport.getError() {
        return this.error;
    }
    
    public void LogReport.setError(String error) {
        this.error = error;
    }
    
    public Log LogReport.getLog() {
        return this.log;
    }
    
    public void LogReport.setLog(Log log) {
        this.log = log;
    }
    
    public Dates LogReport.getDates() {
        return this.dates;
    }
    
    public void LogReport.setDates(Dates dates) {
        this.dates = dates;
    }
    
    public String LogReport.getStackTrace() {
        return this.stackTrace;
    }
    
    public void LogReport.setStackTrace(String stackTrace) {
        this.stackTrace = stackTrace;
    }
    
}
