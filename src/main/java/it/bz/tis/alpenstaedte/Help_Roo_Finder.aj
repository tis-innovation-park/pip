// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Help;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Help_Roo_Finder {
    
    public static Long Help.countFindHelpsByUuid(String uuid) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Help.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Help AS o WHERE o.uuid = :uuid", Long.class);
        q.setParameter("uuid", uuid);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Help> Help.findHelpsByUuid(String uuid) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Help.entityManager();
        TypedQuery<Help> q = em.createQuery("SELECT o FROM Help AS o WHERE o.uuid = :uuid", Help.class);
        q.setParameter("uuid", uuid);
        return q;
    }
    
    public static TypedQuery<Help> Help.findHelpsByUuid(String uuid, String sortFieldName, String sortOrder) {
        if (uuid == null || uuid.length() == 0) throw new IllegalArgumentException("The uuid argument is required");
        EntityManager em = Help.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Help AS o WHERE o.uuid = :uuid");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Help> q = em.createQuery(queryBuilder.toString(), Help.class);
        q.setParameter("uuid", uuid);
        return q;
    }
    
}