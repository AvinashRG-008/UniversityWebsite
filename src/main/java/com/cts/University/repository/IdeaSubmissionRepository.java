package com.cts.University.repository;

/*
 * @Author Adnaan Shahab I
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.cts.University.model.IdeaSubmission;

//Storing the ideas which are submitted by the user in database
@Repository
public interface IdeaSubmissionRepository extends JpaRepository<IdeaSubmission,String>{

}
