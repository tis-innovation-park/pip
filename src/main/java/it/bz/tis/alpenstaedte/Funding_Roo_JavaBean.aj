// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Funding;
import it.bz.tis.alpenstaedte.Idea;

privileged aspect Funding_Roo_JavaBean {
    
    public String Funding.getUuid() {
        return this.uuid;
    }
    
    public void Funding.setUuid(String uuid) {
        this.uuid = uuid;
    }
    
    public String Funding.getUrl() {
        return this.url;
    }
    
    public void Funding.setUrl(String url) {
        this.url = url;
    }
    
    public String Funding.getDescription() {
        return this.description;
    }
    
    public void Funding.setDescription(String description) {
        this.description = description;
    }
    
    public Idea Funding.getIdea() {
        return this.idea;
    }
    
    public void Funding.setIdea(Idea idea) {
        this.idea = idea;
    }
    
}
