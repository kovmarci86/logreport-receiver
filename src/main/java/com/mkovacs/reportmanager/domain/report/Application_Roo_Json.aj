// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mkovacs.reportmanager.domain.report;

import com.mkovacs.reportmanager.domain.report.Application;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Application_Roo_Json {
    
    public String Application.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Application Application.fromJsonToApplication(String json) {
        return new JSONDeserializer<Application>().use(null, Application.class).deserialize(json);
    }
    
    public static String Application.toJsonArray(Collection<Application> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Application> Application.fromJsonArrayToApplications(String json) {
        return new JSONDeserializer<List<Application>>().use(null, ArrayList.class).use("values", Application.class).deserialize(json);
    }
    
}
