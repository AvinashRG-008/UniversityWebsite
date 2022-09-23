package com.cts.University.repository;
/*
 * @Author Avinash R G
 */
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.cts.University.model.Help;

//used for storing the request id in the database for particular user registered complaint
@Repository
public interface HelpRepository extends JpaRepository<Help, String>{

	//List<Help> findRequestbyId(String eventId);
	@Query("select a from Help a")
	List<Help> findRequestbyId();
	
	@Query("select a from Help a where requestId=?1")
	Help findRequestbyId1(int requestId);
	
	@Query("select a from Help a where userId=?1")
	List<Help> findRequestbyId2(String userId);
}
