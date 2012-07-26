package com.mkovacs.reportmanager.domain.report;

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
public class Device {

	private String buildType;
    private String product;

    private Integer orientation;

    private String model;


    private String manufacturer;

    private String device;

    private String brand;

    private String display;

    private String resolution;

    private Integer androidVersion;
    
    public String toString() {
     //   return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    	return manufacturer + " : " + model; 
    			
    }
}
