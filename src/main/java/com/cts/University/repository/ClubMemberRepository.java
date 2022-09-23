package com.cts.University.repository;
/*
 * @Author Prasanth Bhimana
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.cts.University.model.ClubMember;

//Storing the club members details in database and also add,update and delete the club member details in database
@Repository
@Transactional
public interface ClubMemberRepository extends JpaRepository<ClubMember, String>{

	@Modifying
	@Query("delete from ClubMember where clubName=?1 and userId=?2")
	void removeUser(String clubName,String userId);

	@Query("select a from ClubMember a")
	List<ClubMember> findAllClubMember();

	@Query("select a from ClubMember a")
	List<ClubMember> findAllMemebr();

	@Modifying
	@Query("delete from ClubMember where userId=?1")
	void RemoveClubMember(String userId);

	@Query("select a from ClubMember a where userId=?1")
	List<ClubMember> findOtherMember(String userId);

	@Query("select a from ClubMember a where clubName=?1")
	List<ClubMember> findOtherMemberByClubName(String clubName);
	
	@Modifying
	@Query("update ClubMember set designation=?1 where clubName=?2 and userId=?3")
	void UpdateClubMember(String designation, String clubName,String userId);

	@Modifying
	@Query("delete from ClubMember where clubName=?1")
	void deleteClub(String clubName);

	
}
