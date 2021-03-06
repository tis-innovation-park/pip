package it.bz.tis.alpenstaedte.dto;

import java.util.HashSet;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonProperty;
import org.springframework.roo.addon.javabean.RooJavaBean;

@RooJavaBean
public class UserDto {
	private String email;
	private Set<OrganisazionDto> organizations = new HashSet<OrganisazionDto>();
	private String name;
	private String surname;
	private String phone;
	private Set<TopicDto> topics = new HashSet<TopicDto>();
	private String uuid;
	private String role;
	private Set<String> languageSkills = new HashSet<String>();
	private boolean active;
	public UserDto() {
	}

	@JsonCreator
	public UserDto(@JsonProperty("email") String email,@JsonProperty("name") String name,@JsonProperty("surname") String surname,@JsonProperty("phone") String phone,@JsonProperty("topics") Set<TopicDto> topics,@JsonProperty("languageSkills")Set<String> languageSkills) {
		this.email = email;
		this.name = name;
		this.surname = surname;
		this.topics = topics;
		this.phone = phone;
		this.languageSkills= languageSkills;
	}
	
}
