package com.cts.University.Test;

/*
 * @Author Prasanth Bhimana
 */
import java.util.ArrayList;
import java.util.List;
import com.cts.University.model.Admin;
import com.cts.University.repository.AdminRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class AdminRepositoryTest {
	
	@Autowired
    AdminRepository adminRepository;
	
	@Test
    void testAdmin(){
		Admin admin=new Admin("ramesh2@gmail.com","ramesh2@");
		adminRepository.save(admin);
    }
	
	@Test
    void verifyAdmin(){
        List<Admin> adminList = new ArrayList<Admin>();
        String email = "prasanth2@gmail.com";
        String pass = "prasanth2@";
        String getPass=null;
        for(Admin admin: adminRepository.findAll()){
            if(admin.getUserId().equals(email)){
            	adminList.add(admin);
            }
        }
        for(Admin admin: adminList){
        	if(admin.getPassword().equals(pass)) {
        		getPass=admin.getPassword();
        		
        	}
        }
        assertEquals(pass,getPass);
    }


}

