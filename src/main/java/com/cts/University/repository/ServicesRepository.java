package com.cts.University.repository;

/*
 * @Author Adnaan Shahab I
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.cts.University.model.Services;


//Storing the service details in database and no of seats available,no of volunteers required for a particular service

@Repository

public interface ServicesRepository extends JpaRepository<Services, String>{
	
	@Query("select a from Services a where serviceId=?1 and serviceName=?2")
   Services validateService(String serviceId, String serviceName);
	
	@Transactional
	@Modifying
	@Query("update Services set serviceName=?1 , seatsAvailable=?2 , volunteerRequired=?3 where serviceId=?4")
	void updateAdminService(String serviceName,int seatsAvailable,int volunteerRequired,String serviceId);
	
	
	@Transactional
	@Modifying
	@Query("update Services set seatsAvailable=?1 ,userId=?2 where serviceId=?3")
	void updateVolunterServices(int seatsAvailable,String userId, String serviceId);
	
	@Query("select s from Services s")
	List<Services> findAllServices();
}
