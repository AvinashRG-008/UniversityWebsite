package com.cts.University.repository;

/*
 * @Author Prasanth Bhimana
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.University.model.Complains;

//Storing the user registered complaint details in database
@Repository
public interface ComplainsRepository extends JpaRepository<Complains, String> {

	
	
}
