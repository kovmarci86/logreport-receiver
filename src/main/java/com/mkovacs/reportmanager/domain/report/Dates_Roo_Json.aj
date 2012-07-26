// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mkovacs.reportmanager.domain.report;

import com.mkovacs.reportmanager.domain.report.Dates;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Dates_Roo_Json {
    
    public String Dates.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Dates Dates.fromJsonToDates(String json) {
        return new JSONDeserializer<Dates>().use(null, Dates.class).deserialize(json);
    }
    
    public static String Dates.toJsonArray(Collection<Dates> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Dates> Dates.fromJsonArrayToDateses(String json) {
        return new JSONDeserializer<List<Dates>>().use(null, ArrayList.class).use("values", Dates.class).deserialize(json);
    }
    
}
