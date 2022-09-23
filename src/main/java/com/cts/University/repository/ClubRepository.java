package com.cts.University.repository;
/*
 * @Author Asfak Rahaman
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.University.model.Club;

//Storing the different club details in database
@Repository
@Transactional
public interface ClubRepository extends JpaRepository<Club, String>{

	@Modifying
	@Query("delete from Club where clubName=?1")
	void deleteClub(String clubName);
	
	@Query("select s from Club s")
	List<Club> findAllClubs();

	@Modifying
	@Query("update Club set status=?1,userId=?2 where clubName=?3")
	void updateUserClub(String status,String userId, String clubName);

	@Modifying
	@Query("update Club set status=null,userId=null where clubName=?1")
	void updateUserClub1(String clubName);

}
