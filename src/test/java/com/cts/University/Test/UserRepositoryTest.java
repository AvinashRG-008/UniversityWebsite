package com.cts.University.Test;

/*
 * @Author Avinash R G
 */

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.cts.University.model.User;
import com.cts.University.repository.UserRepository;

@SpringBootTest
public class UserRepositoryTest {
	
	@Autowired
    UserRepository userRepository;
	
	@Test
    void testUser(){
		User user=new User();
		user.setUserId("ramesh2@gmail.com");
		user.setPassword("ramesh33333@");
		user.setFirstname("ramesh");
		user.setLastName("varma");
		user.setAge("18");
		user.setGender("male");
		user.setContactNumber("9292929292");
		user.setAnswer1("blue");
		user.setAnswer2("biryani");
		user.setAnswer3("rrr");
		user.setQuestion1("what is your favourite color");
		user.setQuestion2("what is your favourite food");
		user.setQuestion3("what is your favourite movie");
		userRepository.save(user);
    }
	
    @Test
    void updateUser(){
		User user=new User();
		user.setUserId("ramesh2@gmail.com");
		user.setPassword("ramesh22222@");
		user.setFirstname("ramesh");
		user.setLastName("varma");
		user.setAge("18");
		user.setGender("male");
		user.setContactNumber("9292929292");
		user.setAnswer1("blue");
		user.setAnswer2("biryani");
		user.setAnswer3("rrr");
		user.setQuestion1("what is your favourite color");
		user.setQuestion2("what is your favourite food");
		user.setQuestion3("what is your favourite movie");
	    userRepository.save(user);
		
		
}
	
	
}