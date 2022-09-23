package com.cts.University.repository;

/*
 * @Author Avinash R G
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.cts.University.model.Ideas;

//Storing the idea with comment and vote details in database
@Repository
@Transactional
public interface IdeaRepository extends JpaRepository<Ideas,String>{

	@Query("select s from Ideas s")
	List<Ideas> findAllIdeas();

	@Modifying
	@Query("update Ideas set comment=?1 where ideaName=?2")
	void updateIdea(String comment, String ideaName);

	@Modifying
	@Query("update Ideas set comment=?1,vote=?2 where ideaName=?3")
	void updateUserIdea(String comment, String count1, String ideaName);
	
	List<Ideas> findByIdeaName(String eventName);
	
	@Query("select s from Ideas s where ideaName=?1") 
	List<Ideas> findByIdeaName1(String ideaName);
}
