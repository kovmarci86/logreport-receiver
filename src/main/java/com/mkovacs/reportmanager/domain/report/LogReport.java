package com.mkovacs.reportmanager.domain.report;

import javax.persistence.Column;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.transaction.annotation.Transactional;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class LogReport {

	
	@OneToOne
	private Device device;
	
    @Column(columnDefinition="TEXT")
    private String message;

    @OneToOne
    private Application application;

    @Column(columnDefinition="TEXT")
    private String causeStackTrace;

    @Column(columnDefinition="TEXT")
    private String error;

    @OneToOne
    private Log log;

    @OneToOne
    private Dates dates;


    @Column(columnDefinition="TEXT")
    private String stackTrace;
    
    @Transactional
    public void persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        getApplication().persist();
        getDates().persist();
        getDevice().persist();
        getLog().persist();
        this.entityManager.persist(this);
    }
    
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
