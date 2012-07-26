package com.mkovacs.reportmanager.domain.report;

import javax.validation.constraints.Size;

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
public class Application {

    @Size(max = 512)
    private String appPackage;

    private Long versionCode;

    @Size(max = 256)
    private String versionName;
    
    public String toString() {
        return versionName;
    }
}
