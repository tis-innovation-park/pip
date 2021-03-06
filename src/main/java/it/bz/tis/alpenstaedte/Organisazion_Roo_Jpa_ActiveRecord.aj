// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Organisazion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Organisazion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Organisazion.entityManager;
    
    public static final List<String> Organisazion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name", "pic");
    
    public static final EntityManager Organisazion.entityManager() {
        EntityManager em = new Organisazion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Organisazion.countOrganisazions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Organisazion o", Long.class).getSingleResult();
    }
    
    public static List<Organisazion> Organisazion.findAllOrganisazions() {
        return entityManager().createQuery("SELECT o FROM Organisazion o", Organisazion.class).getResultList();
    }
    
    public static List<Organisazion> Organisazion.findAllOrganisazions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Organisazion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Organisazion.class).getResultList();
    }
    
    public static Organisazion Organisazion.findOrganisazion(Long id) {
        if (id == null) return null;
        return entityManager().find(Organisazion.class, id);
    }
    
    public static List<Organisazion> Organisazion.findOrganisazionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Organisazion o", Organisazion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Organisazion> Organisazion.findOrganisazionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Organisazion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Organisazion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Organisazion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Organisazion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Organisazion attached = Organisazion.findOrganisazion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Organisazion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Organisazion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Organisazion Organisazion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Organisazion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
