package com.cts.University.repository;

/*
 * @Author Avinash R G
 */
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.University.model.User;

//Storing the user details in database and also update password,userId details in database
@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, String>{

                @Query("select a from User a where userId=?1 and password=?2")
                User validateUser(String userId, String password);
                
                //@Query("select u from User u where contactNumber=1? ")
                User findUserDetailsByContactNumber(String contactNumber);
                
                //@Query("select u from User u where userId=1? ")
                User findUserDetailsByUserId(String userId);

                @Query("select u from User u where answer1=?1 and answer2=?2 and answer3=?3 and contactNumber=?4")
                User getUserDetailsByAns(String ans1, String ans2, String ans3,String contact);
                
                @Query("select u from User u where answer1=?1 and answer2=?2 and answer3=?3 and userId=?4")
                User getUserDetailsByAns1(String ans1, String ans2, String ans3,String userId);
                
                @Modifying
                @Query("update User set password=?1 where userId=?2")
                void updateUserByUserId(String password,String userId);

                         
}
