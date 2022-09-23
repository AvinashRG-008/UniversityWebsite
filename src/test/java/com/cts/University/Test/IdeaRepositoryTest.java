package com.cts.University.Test;

/*
 * @Author Prasanth Bhimana
 */
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.cts.University.model.Ideas;
import com.cts.University.repository.IdeaRepository;

@SpringBootTest
public class IdeaRepositoryTest {
	@Autowired 
	IdeaRepository idearepository;
	
	@Test
    void testIdea(){
		Ideas ideas=new Ideas();
		ideas.setIdeaName("radio");
		ideas.setComment("nice");
		ideas.setVote("10");
		idearepository.save(ideas);
    }
	
	@Test
    void updateIdea(){
		Ideas ideas=new Ideas();
		ideas.setIdeaName("radio");
		ideas.setComment("nice");
		ideas.setVote("20");
		idearepository.save(ideas);
		
		
    }
	@Test
    void deleteIdea(){
		idearepository.deleteById("tv");
		
		
    }
	

}
