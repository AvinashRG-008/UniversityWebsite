package com.cts.University.repository;

/*
 * @Author Adnaan Shahab I
 */


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.University.model.ServicesReport;

//Storing the services done by the users in database
@Repository
public interface ServicesRepository1 extends JpaRepository<ServicesReport, String>{

	@Query("select s from ServicesReport s")
	List<ServicesReport> findRequestbyReportId();
	
	
	

}
