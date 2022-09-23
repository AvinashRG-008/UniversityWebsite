package com.cts.University.repository;

/*
 * @Author Prasanth Bhimana
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.University.model.Admin;

//Storing the admin details in database
@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{

	@Query("select a from Admin a where userId=?1 and password=?2")
	Admin validateAdmin(String userId,String password);
}
