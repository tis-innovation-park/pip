package it.bz.tis.alpenstaedte.dto;

import java.util.Date;

import org.springframework.roo.addon.javabean.RooJavaBean;

@RooJavaBean
public class CommentDto {
	private String text;
	private UserDto author;
	private Date created_on;
}
