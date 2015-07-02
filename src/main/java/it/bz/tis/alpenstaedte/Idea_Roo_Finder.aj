// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.AlpsUser;
import it.bz.tis.alpenstaedte.Idea;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Idea_Roo_Finder {
    
    public static Long Idea.countFindIdeasByOwner(AlpsUser owner) {
        if (owner == null) throw new IllegalArgumentException("The owner argument is required");
        EntityManager em = Idea.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Idea AS o WHERE o.owner = :owner", Long.class);
        q.setParameter("owner", owner);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Idea.countFindIdeasByUuidEquals(String uuid) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Idea.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Idea AS o WHERE o.uuid = :uuid", Long.class);
        q.setParameter("uuid", uuid);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Idea> Idea.findIdeasByOwner(AlpsUser owner) {
        if (owner == null) throw new IllegalArgumentException("The owner argument is required");
        EntityManager em = Idea.entityManager();
        TypedQuery<Idea> q = em.createQuery("SELECT o FROM Idea AS o WHERE o.owner = :owner", Idea.class);
        q.setParameter("owner", owner);
        return q;
    }
    
    public static TypedQuery<Idea> Idea.findIdeasByOwner(AlpsUser owner, String sortFieldName, String sortOrder) {
        if (owner == null) throw new IllegalArgumentException("The owner argument is required");
        EntityManager em = Idea.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Idea AS o WHERE o.owner = :owner");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Idea> q = em.createQuery(queryBuilder.toString(), Idea.class);
        q.setParameter("owner", owner);
        return q;
    }
    
    public static TypedQuery<Idea> Idea.findIdeasByUuidEquals(String uuid) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Idea.entityManager();
        TypedQuery<Idea> q = em.createQuery("SELECT o FROM Idea AS o WHERE o.uuid = :uuid", Idea.class);
        q.setParameter("uuid", uuid);
        return q;
    }
    
    public static TypedQuery<Idea> Idea.findIdeasByUuidEquals(String uuid, String sortFieldName, String sortOrder) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Idea.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Idea AS o WHERE o.uuid = :uuid");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Idea> q = em.createQuery(queryBuilder.toString(), Idea.class);
        q.setParameter("uuid", uuid);
        return q;
    }
    
}
