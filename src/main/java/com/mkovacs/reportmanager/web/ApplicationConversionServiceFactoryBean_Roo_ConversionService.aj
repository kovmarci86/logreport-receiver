// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mkovacs.reportmanager.web;

import com.mkovacs.reportmanager.domain.report.LogReport;
import com.mkovacs.reportmanager.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<LogReport, String> ApplicationConversionServiceFactoryBean.getLogReportToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mkovacs.reportmanager.domain.report.LogReport, java.lang.String>() {
            public String convert(LogReport logReport) {
                return new StringBuilder().append(logReport.getMessage()).append(" ").append(logReport.getCauseStackTrace()).append(" ").append(logReport.getError()).append(" ").append(logReport.getStackTrace()).toString();
            }
        };
    }
    
    public Converter<Long, LogReport> ApplicationConversionServiceFactoryBean.getIdToLogReportConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mkovacs.reportmanager.domain.report.LogReport>() {
            public com.mkovacs.reportmanager.domain.report.LogReport convert(java.lang.Long id) {
                return LogReport.findLogReport(id);
            }
        };
    }
    
    public Converter<String, LogReport> ApplicationConversionServiceFactoryBean.getStringToLogReportConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mkovacs.reportmanager.domain.report.LogReport>() {
            public com.mkovacs.reportmanager.domain.report.LogReport convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogReport.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getLogReportToStringConverter());
        registry.addConverter(getIdToLogReportConverter());
        registry.addConverter(getStringToLogReportConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
