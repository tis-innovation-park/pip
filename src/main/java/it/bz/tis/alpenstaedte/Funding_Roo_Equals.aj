// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Funding;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Funding_Roo_Equals {
    
    public boolean Funding.equals(Object obj) {
        if (!(obj instanceof Funding)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Funding rhs = (Funding) obj;
        return new EqualsBuilder().append(id, rhs.id).append(uuid, rhs.uuid).isEquals();
    }
    
    public int Funding.hashCode() {
        return new HashCodeBuilder().append(id).append(uuid).toHashCode();
    }
    
}
