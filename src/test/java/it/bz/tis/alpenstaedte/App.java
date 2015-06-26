package it.bz.tis.alpenstaedte;

import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@ContextConfiguration(value = {"classpath:/META-INF/spring/applicationContext*.xml"})
public class App extends AbstractJUnit4SpringContextTests{
	
	String[] topics = new String[]{"Energy","Mobility","Environment"};
	String[] status = new String[]{"idea","application done","funding granted","concluded"};
	@Test
	public void createTopics(){
		for (String stringtopic : topics){
			Topic topic = new Topic();
			topic.setName(stringtopic);
			topic.persist();
		}
	}
	@Test
	public void createStatus(){
		for (String currentStatus : status){
			ProjectStatus status= new ProjectStatus();
			status.setName(currentStatus);
			status.persist();
		}
	}
	
}
