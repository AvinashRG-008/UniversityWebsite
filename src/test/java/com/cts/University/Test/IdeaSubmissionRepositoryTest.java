package com.cts.University.Test;

/*
 * @Author Avinash R G
 */
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.cts.University.model.IdeaSubmission;
import com.cts.University.repository.IdeaSubmissionRepository;

@SpringBootTest
public class IdeaSubmissionRepositoryTest {
	@Autowired 
	IdeaSubmissionRepository ideasubmissionrepository;
	
	@Test
    void testIdeasubmission(){
		IdeaSubmission ideasubmission=new IdeaSubmission();
		ideasubmission.setIdeaTopic("Parking");
		ideasubmission.setIdeaDescription("Increase parking space for student vehicles");
		ideasubmissionrepository.save(ideasubmission);
    }

}
