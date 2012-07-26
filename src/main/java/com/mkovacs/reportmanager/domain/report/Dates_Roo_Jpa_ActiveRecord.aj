// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mkovacs.reportmanager.domain.report;

import com.mkovacs.reportmanager.domain.report.Dates;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Dates_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Dates.entityManager;
    
    public static final EntityManager Dates.entityManager() {
        EntityManager em = new Dates().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Dates.countDateses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Dates o", Long.class).getSingleResult();
    }
    
    public static List<Dates> Dates.findAllDateses() {
        return entityManager().createQuery("SELECT o FROM Dates o", Dates.class).getResultList();
    }
    
    public static Dates Dates.findDates(Long id) {
        if (id == null) return null;
        return entityManager().find(Dates.class, id);
    }
    
    public static List<Dates> Dates.findDatesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Dates o", Dates.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Dates.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Dates.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Dates attached = Dates.findDates(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Dates.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Dates.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Dates Dates.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Dates merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
