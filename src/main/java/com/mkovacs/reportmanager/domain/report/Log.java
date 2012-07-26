package com.mkovacs.reportmanager.domain.report;

import java.util.Collection;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.JoinColumn;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Log {

    private Integer numberOfEntry;
    @ElementCollection
    @CollectionTable(name="log_lines", joinColumns = @JoinColumn(name="log_id"))
    private List<String> log;
    
    public String toString() {
        return "Log entries:" + numberOfEntry;
    }
}
