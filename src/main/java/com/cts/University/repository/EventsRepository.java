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

import com.cts.University.model.Events;

//Storing the event details in database
@Repository
@Transactional
public interface EventsRepository extends JpaRepository<Events, Integer> {

	List<Events> findByEventName(String eventName);
	List<Events> findByEventId(String eventId);
	
	@Query("select e from Events e where startDate>=STR_TO_DATE(?1,'%Y-%m-%d') and endDate<=STR_TO_DATE(?2,'%Y-%m-%d')")
	List<Events> findByEventDate(String startDate, String endDate);
	
	@Modifying
	@Query("delete from Events where eventName=?1")
	void deleteEvent(String eventName);
	
	@Modifying
	@Query("update Events set choiceInterest=?1,attendance=?2,choiceLike=?3, comment=?4 where eventId=?5")
	void updateEventsById(String choiceInterest, String attendance, String choiceLike,String comment, int eventId );
}
