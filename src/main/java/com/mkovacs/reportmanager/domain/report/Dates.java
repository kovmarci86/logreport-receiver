package com.mkovacs.reportmanager.domain.report;

import java.util.Date;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Dates {

	private String dateString;
    private Long dateSystem;

    private String locale;
    
    public String toString() {
    	return new Date(dateSystem) + "(" + locale + ")";
    }
}
