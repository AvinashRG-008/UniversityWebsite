package com.cts.University.controller;

/*
 * @Author Prasanth Bhimana, Avinash R G, Asfak Rahaman 
 */
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.University.model.Admin;
import com.cts.University.model.Club;
import com.cts.University.model.ClubMember;
import com.cts.University.model.Complains;
import com.cts.University.model.Services;
import com.cts.University.model.ServicesReport;
import com.cts.University.model.Events;
import com.cts.University.model.Help;
import com.cts.University.model.IdeaSubmission;
import com.cts.University.model.Ideas;
import com.cts.University.model.User;
import com.cts.University.repository.AdminRepository;
import com.cts.University.repository.ClubMemberRepository;
import com.cts.University.repository.ClubRepository;
import com.cts.University.repository.ComplainsRepository;
import com.cts.University.repository.EventsRepository;
import com.cts.University.repository.HelpRepository;
import com.cts.University.repository.IdeaRepository;
import com.cts.University.repository.IdeaSubmissionRepository;
import com.cts.University.repository.ServicesRepository;
import com.cts.University.repository.ServicesRepository1;
import com.cts.University.repository.UserRepository;


@Controller
public class UniversityWebsiteController {
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	EventsRepository eventsRepository;
	@Autowired
	ServicesRepository serviceRepository;
	@Autowired
	HelpRepository helpRepository;
	@Autowired
	ComplainsRepository complainRepository;
	@Autowired
	IdeaSubmissionRepository ideasubmissionRepository;
	@Autowired
	IdeaRepository ideaRepository;
	@Autowired
	ServicesRepository1 serviceRepository1;
	@Autowired
	ClubRepository clubRepository;
	@Autowired
	ClubMemberRepository clubMemberRepository;
	HttpSession session;
	/*
	 * @author Prasanth Bhimana
	 */
/*Admin Login*/
	@RequestMapping("/admin_login")
	public String AdminLogin(@ModelAttribute("admin") Admin admin) {
		admin = new Admin();
		return "admin_login";
	}
	@RequestMapping("/validateadmin")// Validating the credentials of the admin
	public String validateAdmin(@ModelAttribute("admin") Admin admin, Model model,HttpServletRequest request) {
		Admin admin1 = adminRepository.validateAdmin(admin.getUserId(), admin.getPassword());
		HttpSession session = request.getSession();
		if (admin1 != null) {
			model.addAttribute("username", admin1.getUserId());
			session.setAttribute("userId", admin1.getUserId());
			return "admin_home";
		} else {
			model.addAttribute("status", "Invalid Username/Password");//Returns if the credentials are wrong
			return "admin_login";
		}
	}
	@RequestMapping(value = "/logoutAdmin", method = RequestMethod.POST)
	public String logoutAdmin(HttpSession session, @Valid @ModelAttribute("admin") Admin admin, BindingResult bindingResult) {
		session.removeAttribute("userId");
		return "signout_admin";
	}
/*End of Admin Login*/
	
	/*
	 * @author Avinash R G	
	 */
	
	
/* User Login*/
	@RequestMapping("/user_login")
	public String UserLogin(@ModelAttribute("user") User user) {
		user = new User();
		return "user_login";
	}
	@RequestMapping(value = "/validateuser")// Validating user login credentials.
	public String validateUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model,
			HttpServletRequest request) {
		// System.out.println(bindingResult.hasErrors());
		User user1 = userRepository.validateUser(user.getUserId(), user.getPassword());
		HttpSession session = request.getSession();
		if (user1 != null ) {
			if(user1.getPassword()!=""||user1.getPassword()!=null){
			model.addAttribute("username","Welcome "+user1.getFirstname());
			session.setAttribute("userId", user.getUserId());
			System.out.println(session.getAttribute("userId"));
			return "user_home";}
		} else 
			model.addAttribute("loginstatus", "Invalid Username/Password");// Returns if the credentials wrong
			return "user_login";	
	}
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession session, @Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
		session.removeAttribute("userId");
		return "signout";
	}
/* End of User Login*/
	
	/*
	 * @author Avinash R G	
	 */	
	
/*User Register*/
	@RequestMapping("/user_register")// For a new user to register into the website.
	public String RegisterUser(@ModelAttribute("user") User user) {
		user = new User();
		return "user_register";
	}
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
		System.out.println(user);
		if (bindingResult.hasErrors()) {
			model.addAttribute("status", "Please Fill Details");// Tells to fill all the required details
			return "user_register";
		}
		userRepository.save(user);
		model.addAttribute("registerstatus", "Successfully Registered");// If user registered successfully the message is displayed.
		return "user_login";
	}
/*User Register*/
	
	/*
	 * @author Adnaan Shahab I
	 */	
	
/* ForgetUserPassword*/
	@RequestMapping("/user_forgotpassword")
    public String forgotpassword() {
          return "user_forgotpassword";

    }
    @RequestMapping("/submit_user_forgotuserpassword")
    public String forgotsubmitpassword(@RequestParam String userId, Model model) {
          User user = userRepository.findUserDetailsByUserId(userId);

          if (user == null) {
               model.addAttribute("msg", "Invalid UserID");// Displays error message when the credentials are wrong.
               return "user_forgotpassword";
          }
          model.addAttribute("q1", user.getQuestion1());
          model.addAttribute("q2", user.getQuestion2());
          model.addAttribute("q3", user.getQuestion3());
          model.addAttribute("userId", user.getUserId());
          return "user_forgotpassword";

    }
    @RequestMapping("/submitSecQueAns1")// Validating the user credentials by answering the secret questions
    public String submitSecretQuestion1(@RequestParam String ans1, @RequestParam String ans2, @RequestParam String ans3,
               @RequestParam String userId, Model model) {
          User user = userRepository.getUserDetailsByAns1(ans1, ans2, ans3, userId);

          if (user == null) {
               model.addAttribute("msg", "Secret Answer is Incorrect");
               return "user_forgotpassword";
          }
          model.addAttribute(user);
          return "user_resetpassword";

    }
    @RequestMapping("/resetPassword")// For resetting password if the user has forgot password
    public String resetPassword(@RequestParam String resetPassword1, @RequestParam String resetPassword2,@RequestParam String userId ,Model model) {
          
          if(resetPassword1.equals(resetPassword2) && !(resetPassword1==""))
          {
               
               userRepository.updateUserByUserId(resetPassword1,userId);
               model.addAttribute("status","Updated Successfully");
               model.addAttribute(new User());
               return "user_login";
          }
          else {
	          model.addAttribute("status","Not Updated, Try Again !");
	          return "user_resetpassword";
          }
    }
/*End of ForgetUserPassword*/
    

    /*
     * @author Amrit Sagar Khuntia   
     */
/* ForgetUserUserId*/
    @RequestMapping("/user_forgotuserid")// To retrieve the user id by entering the mobile number
	public String forgotuserid() {
		return "user_forgotuserid";

	}
	@RequestMapping("/submit_user_forgotuserid")
	public String forgotsubmituserid(@RequestParam String contactNumber, Model model) {
		User user = userRepository.findUserDetailsByContactNumber(contactNumber);

		if (user == null) {
			model.addAttribute("msg", "Invalid Contact Number");// If contact number is wrong the message is displayed
			return "user_forgotuserid";

		}
		model.addAttribute("q1", user.getQuestion1());
		model.addAttribute("q2", user.getQuestion2());
		model.addAttribute("q3", user.getQuestion3());
		model.addAttribute("contact", user.getContactNumber());
		return "user_forgotuserid";

	}
	@RequestMapping("/submitSecQueAns")// Validating the user with the secret questions
	public String submitSecretQuestion(@RequestParam String ans1, @RequestParam String ans2, @RequestParam String ans3,
			@RequestParam String contact, Model model) {
		User user = userRepository.getUserDetailsByAns(ans1, ans2, ans3, contact);

		if (user == null) {
			model.addAttribute("msg", "Secret Answer is Incorrect");
			return "user_forgotuserid";
		}
		model.addAttribute("userid", "Your userId Is:" + user.getUserId());

		return "user_forgotuserid";

	}
/*End of ForgetUserId*/
	
	/*
	 * @author Asfak Rahaman
	 */
	
/*Start of User Club page*/	
	@RequestMapping("/user_club")
	public String events(@ModelAttribute("clubs") Club clubs) {
		clubs = new Club();
		return "user_clubs";
	}
	@RequestMapping("/showuser_club_searchByName")// User to search club with the club name
    public String user_view_club(@Valid @ModelAttribute("clubs") Club clubs,BindingResult bindingResult,Model model) {
    List<Club> clubList = clubRepository.findAllClubs();
    model.addAttribute("clubList", clubList);
    //System.out.println(ideas.getIdeaName());
    if(clubList.isEmpty()) {
    	model.addAttribute("status", "No Club Found");
    }
    return "user_view_club";
    }
	@RequestMapping(value = "/saveClubDetails", method = RequestMethod.GET)// User are displayed with the different clubs
	public String saveClubDetails(@Valid @ModelAttribute("clubs") Club clubs,BindingResult bindingResult, HttpServletRequest request, Model model)
	{
			int flag=0;
			session=request.getSession();
		    String userId=(String)session.getAttribute("userId");
		    ClubMember obj=new ClubMember(userId,clubs.getClubName(),clubs.getReportId());
		    if(clubs.getStatus().equals("join"))
		    {
		    //System.out.println(clubs.getReportId());
		    List<ClubMember> clubMemberList=clubMemberRepository.findAllClubMember();
		    for(ClubMember cm: clubMemberList)
		    {
		    	if(cm.getUserId().equals(userId) && cm.getClubName().equals(clubs.getClubName()))
		    	{
		    		flag=1;
		    	}
		    }
		    if(flag==0)
		    {
		    clubMemberRepository.save(obj);// Saving the details of club member to the database
		    }
			clubRepository.updateUserClub(clubs.getStatus(),userId,clubs.getClubName());
			model.addAttribute("clubUpdates","Member Joined Successfully");
			return "user_view_club";
		    }
		    clubMemberRepository.removeUser(obj.getClubName(),userId);
		    clubRepository.updateUserClub1(clubs.getClubName());
		    model.addAttribute("clubUpdates","Member Removed Successfully");// If club member removed by admin the message is displayed.
		    return "user_view_club";
	}
	@RequestMapping("/showuser_club_otherMember")
	public String user_view_clubOtherMember(@Valid @ModelAttribute("clubs") ClubMember clubs,HttpServletRequest request,BindingResult bindingResult,Model model) {
		session=request.getSession();
	    String userId=(String)session.getAttribute("userId");  
	    System.out.println(userId);
		List<ClubMember> clubList = clubMemberRepository.findOtherMember(userId);
          if (clubList != null) {
               model.addAttribute("clubList", clubList);
               return "user_clubList";
          } 
          return "user_clubList";
    }
	@RequestMapping("/showuser_club_otherMember1")// To  display other users in the club.
	public String user_view_clubOtherMember1(@RequestParam String clubName,HttpServletRequest request,Model model) {	
		List<ClubMember> clubMemberList = clubMemberRepository.findOtherMemberByClubName(clubName);
		if(clubMemberList!=null)
		{
			model.addAttribute("clubMemberList", clubMemberList);
			return "user_clubMemberList";
		}
		return "user_clubMemberList";
	}
	
	/*End of User Club page*/
	
	/*
	 * @author Asfak Rahaman
	 */
	
/*Start of User Events page*/	
	@RequestMapping("/user_events")
	public String events(@ModelAttribute("user") Events events) {
		events = new Events();
		return "user_events";
	}
	@RequestMapping(value = "/user_events", method = RequestMethod.POST)// Display the various events that are available
	public String showEventPage(@ModelAttribute("user") User user, HttpServletRequest request, BindingResult bindingResult) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return "user_login";
		} else {

			return "user_events";
		}
	}

	@RequestMapping("/showuser_event_searchByName")// For users to search the events by name
	public String showuser_event_searchByName() {
		return "user_event_searchByName";
	}

	@RequestMapping("/showuser_event_searchByName1")
	public String searchEventByName(@RequestParam String eventName,@Valid @ModelAttribute("eventstatus") Events eventstatus,BindingResult bindingResult, Model model) {
		List<Events> eventsList = eventsRepository.findByEventName(eventName);
		eventstatus=new Events();
		model.addAttribute("events", eventsList);
		if(eventsList.isEmpty()) {
			model.addAttribute("status", "No Event With Such Name Found");
		}
		return "user_event_searchByName";
	}
	
	@RequestMapping(value = "/saveUserEventComment", method = RequestMethod.GET)// For users to give comments for the events.
	public String saveSearchbyNamedata(@ModelAttribute("eventstatus") Events events, Model model) {
	
		eventsRepository.updateEventsById(events.getChoiceInterest(),events.getAttendance(),events.getChoiceLike(),events.getComment(),events.getEventId());
		model.addAttribute("status","event info saved");
		return "user_event_searchByName";
	
	}

	@RequestMapping("/showuser_event_searchById")// For users to search the events by id
	public String showuser_event_searchById() {
		return "user_event_searchById";
	}

	@RequestMapping("/searchEventById1")
	public String searchEventById(@RequestParam String eventId, Model model) {
		List<Events> eventsList = eventsRepository.findByEventId(eventId);
		model.addAttribute("events", eventsList);
		if(eventsList.isEmpty()) {
			model.addAttribute("status", "No Event With Such Id Found");
		}
		return "user_event_searchById";
	}
	
	@RequestMapping("/showuser_event_searchByDate")// For users to search the events by date
	public String showuser_event_searchByDate() {
		return "user_event_searchByDate";
	}

	@RequestMapping("/showuser_event_searchByDate1")
	public String showuser_event_searchByDate1(@RequestParam String startDate, @RequestParam String endDate, Model model) {
		List<Events> eventsList = eventsRepository.findByEventDate(startDate, endDate);
		System.out.println(startDate);
		System.out.println(endDate);
		model.addAttribute("events", eventsList);
		System.out.println(eventsList);
		if(eventsList.isEmpty()) {
			model.addAttribute("status", "No Event With Such Dates Found");
		}
		return "user_event_searchByDate";
	}
/*End of User Event Page*/
	
	/*
	 * @ author Avinash R G , Adnaan Shahab I
	 */

/* start of user Ideas Page*/
	@RequestMapping("/user_ideas")
	public String UserIdeas() {
		return "user_ideas";
	}
	@RequestMapping("/user_ideasubmission")// For users to submit their ideas
	public String IdeaSubmission(@ModelAttribute("ideaSubmission") IdeaSubmission ideaSubmission) {
		ideaSubmission=new IdeaSubmission();
		return "user_ideasubmission";
	}
	@RequestMapping(value = "/saveIdea", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("ideaSubmission") IdeaSubmission ideaSubmission, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors())
		{
			model.addAttribute("registerstatus", "Not Submitted");
			return "user_ideasubmission";
		}
		ideasubmissionRepository.save(ideaSubmission);
		model.addAttribute("registerstatus", "Successfully Submitted");
		return "user_ideasubmission";
		
		
	}
	@RequestMapping("/user_view_idea")// For users to view the ideas
    public String user_view_idea(@Valid @ModelAttribute("ideas") Ideas ideas,BindingResult bindingResult,Model model) {
    List<Ideas> ideasList = ideaRepository.findAllIdeas();
    model.addAttribute("ideasList", ideasList);
    //System.out.println(ideas.getIdeaName());
    if(ideasList.isEmpty()) {
    	model.addAttribute("status", "No Idea Found");
    }
    return "user_view_idea";
    }
	@RequestMapping(value = "/saveIdeaComment", method = RequestMethod.GET)
	public String saveIdeaComment(@Valid @ModelAttribute("ideas") Ideas ideas,BindingResult bindingResult,  Model model)
	{
		
		if(ideas.getComment()!="")
		{
			//System.out.println(ideas.getIdeaName());
			List<Ideas>ideasList1=ideaRepository.findByIdeaName(ideas.getIdeaName());
			String count=null;
			for(Ideas i:ideasList1)
			{
				 count=i.getVote();// For users to comment and vote on ideas
			}
			System.out.println(count);
			System.out.println(ideas.getComment());
			System.out.println(ideas.getVote());
			String s=ideas.getVote();
			int vote=Integer.parseInt(count);
			
			//int count=0;
			if(s.equals("like"))
			{
				vote+=1;
			}
			else
			{
				vote-=1;
			}
			String count1=vote+"";
			ideaRepository.updateUserIdea(ideas.getComment(),count1,ideas.getIdeaName());
			model.addAttribute("ideaUpdates","Updated Successfully");
			return "user_view_idea";
		}
		model.addAttribute("ideaUpdates1","Not Updated");
		return "user_view_idea";
	}
	@RequestMapping("/user_search_idea")// For users to search for an idea
	public String userSearchIdea() {
		return "user_idea_searchByName";
	}
	@RequestMapping("/showuser_idea_searchByName1")// For users to search idea by name
	public String searchIdeaByName(@RequestParam String ideaName, Model model) {
		List<Ideas> ideaList = ideaRepository.findByIdeaName1(ideaName);
		model.addAttribute("ideaList", ideaList);
		if(ideaList.isEmpty()) {
			model.addAttribute("status", "No Idea With Such Name Found");
		}
		return "user_idea_searchByName";
	}

/* End of user Ideas Page*/
	
	/*
	 * @author Asfak Rahaman
	 */
	
/* Start of Admin Club Page*/	
	@RequestMapping("/show_admin_club_info")
	public String show_user_club_info(@ModelAttribute("clubs") Club clubs) {
		clubs=new Club();
		return "admin_add_club";
	}
	@RequestMapping(value = "/saveAdminClub", method = RequestMethod.POST)
	public String saveClub(@Valid @ModelAttribute("clubs") Club clubs,BindingResult bindingResult,  Model model) {
		System.out.println(clubs);
		if(clubs.getClubName()!="")// For admin to add club
		{
		clubRepository.save(clubs);
		model.addAttribute("eventstatus", "Successfully Added Club");
		return "admin_home";
		}
		model.addAttribute("eventstatus", "Event Not Added");
		return "admin_home";
	}
	@RequestMapping("/show_admin_club_deleteinfo")
	public String show_user_club_deleteinfo(@ModelAttribute("clubs") Club clubs) {
		clubs=new Club();
		return "admin_delete_club";
	}
	@RequestMapping("/deleteAdminClub")// For admin to delete club
	public String delete(@ModelAttribute("clubs") Club clubs,Model model) {
		if(clubs.getClubName()!="")
		{
			clubRepository.deleteClub(clubs.getClubName());
			clubMemberRepository.deleteClub(clubs.getClubName());
			model.addAttribute("clubstatus","Successfully Deleted a Club");
			return "admin_home";
		}
		model.addAttribute("eventstatus","Club not Deleted");
		return "admin_home";
	}
	@RequestMapping("/show_admin_club_removeinfo")// For admin to remove the club member
    public String user_view_idea(@Valid @ModelAttribute("clubs") Club clubs,BindingResult bindingResult,Model model) {
    List<ClubMember> memberList = clubMemberRepository.findAllMemebr();
    model.addAttribute("memberList", memberList);
    //System.out.println(ideas.getIdeaName());
    if(memberList.isEmpty()) {
    	model.addAttribute("status", "No Member Found");
    }
    return "admin_remove_clubMember";
    }
	@RequestMapping(value="/show_admin_club_removeinfo1",params="remove")
	public String remove(@ModelAttribute("clubs") Club clubs,Model model) {
			clubMemberRepository.RemoveClubMember(clubs.getUserId());
			model.addAttribute("clubstatus","Successfully Remove Member");// Displays message when member is removed from club.
			return "admin_remove_clubMember";	
	}
	@RequestMapping(value="/show_admin_club_removeinfo1",params="update")
	public String update(@ModelAttribute("clubs") Club clubs,Model model) {
		clubMemberRepository.UpdateClubMember(clubs.getDesignation(),clubs.getClubName(),clubs.getUserId());
		model.addAttribute("clubstatus","Successfully Updated desigantion");
		return "admin_remove_clubMember";	
}
	
/* End of Admin Club Page*/	
	
	/*
	 * @author Asfak Rahaman
	 */
/* Start of Admin Event Page*/
	@RequestMapping("/show_admin_event_info")
	public String show_user_event_info(@ModelAttribute("events") Events events) {
		events=new Events();
		return "admin_add_event";
	}
	@RequestMapping(value = "/saveAdminEvent", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("events") Events events,BindingResult bindingResult,  Model model) {
		System.out.println(events);
		if(events.getEventId()<=0)
		{
		eventsRepository.save(events);// For admin to add events
		model.addAttribute("eventstatus", "Successfully Added Event");
		return "admin_home";
		}
		model.addAttribute("eventstatus", "Event Not Added");
		return "admin_home";
	}
	@RequestMapping("/show_admin_event_deleteinfo")// For admin to delete events
	public String show_user_event_deleteinfo(@ModelAttribute("events") Events events) {
		events=new Events();
		return "admin_delete_event";
	}
	@RequestMapping("/deleteAdminEvent")
	public String delete(@ModelAttribute("events") Events events,Model model) {
		if(events.getEventName()!="")
		{
			eventsRepository.deleteEvent(events.getEventName());
			model.addAttribute("eventstatus","Successfully Deleted an Event");
			return "admin_home";
		}
		model.addAttribute("eventstatus","Event not Deleted");
		return "admin_home";
	}
/*End of Admin Event Page*/
	
	/*
	 * @author Avinash R G
	 */
	
/*start of admin idea Page*/
	
	@RequestMapping("/show_admin_idea_info")
	public String show_admin_idea_info(@ModelAttribute("ideas") Ideas ideas) {
		ideas=new Ideas();
		return "admin_add_idea";
	}
	@RequestMapping(value = "/saveAdminIdea", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("ideas") Ideas ideas,BindingResult bindingResult,  Model model) {
		System.out.println(ideas);
		if(bindingResult.hasErrors())
		{
			//model.addAttribute("ideastatus", "Idea can not be Idea");
			return "admin_add_idea";
		}
		ideaRepository.save(ideas);
		model.addAttribute("ideastatus", "Successfully Added Idea");// For admin to add ideas
		return "admin_home";	
	}
	
	@RequestMapping("/show_admin_update_idea_info")// For admin to update idea
    public String show_admin_update_idea_info(@Valid @ModelAttribute("ideas") Ideas ideas,BindingResult bindingResult,  Model model) {
    List<Ideas> ideasList = ideaRepository.findAllIdeas();
    model.addAttribute("ideaList", ideasList);
    if(ideasList.isEmpty()) {
    	model.addAttribute("status", "No Services Found");
    }
    return "admin_update_idea";
    }
	//For admin to comment on the ideas
	@RequestMapping(value = "/show_admin_update_idea_info1", method = RequestMethod.POST)
	public String saveAdminIdeaUpdate(@Valid @ModelAttribute("ideas") Ideas ideas,BindingResult bindingResult,  Model model)
	{
		if(ideas.getComment()!="")
		{
			System.out.println(ideas.getIdeaName());
			System.out.println(ideas.getComment());
			ideaRepository.updateIdea(ideas.getComment(),ideas.getIdeaName());
			model.addAttribute("ideaUpdates","Updated Successfully");
			return "admin_home";
		}
		model.addAttribute("ideaUpdates","Not Updated");
		return "admin_home";
	}

/* end of admin idea page*/
	/*
	 * @author Prasanth Bhimana
	 */
/*Start of Admin Service Page*/
	@RequestMapping("/show_admin_service_info")// For admin to add service
	public String show_admin_service_info(@ModelAttribute("services") Services services) {
		services=new Services();
		return "admin_add_service";
	}
	@RequestMapping(value = "/saveAdminService", method = RequestMethod.POST)
	public String saveAdminSerivce(@Valid @ModelAttribute("services") Services services,BindingResult bindingResult,  Model model) {
		System.out.println(services);
		if(services!=null)
		{
		serviceRepository.save(services);
		model.addAttribute("servicestatus", "Successfully Added Service");
		return "admin_home";
		}
		model.addAttribute("servicestatus", "Not Added Service");
		return "admin_home";
	}
	@RequestMapping("/show_admin_update_service_info")// For admin to update on the service
	public String show_admin_update_service_info(@ModelAttribute("services") Services services) {
		services=new Services();
		return "admin_update_service";
	}
	@RequestMapping(value="/updateAdminService", method=RequestMethod.POST)
	public String updateAdminService( @ModelAttribute("services") Services services,Model model)
	{
		 Services services1 = serviceRepository.validateService(services.getServiceId(),services.getServiceName());
		  if(services1!=null)
		  {
			  System.out.println("shubham");
			  serviceRepository.updateAdminService(services.getServiceName(),services.getVolunteerRequired(),services.getSeatsAvailable(),services.getServiceId());
			  model.addAttribute("updatestatus","Updated Successfully");
			  return "admin_home";
		  }
		  model.addAttribute("updatestatus","Not Updated");
		 return "admin_home";
		  
	}
	@RequestMapping("/show_admin_report_service_info")// For admin to generate report for the services
	public String admin_report( Model model) {
        List<ServicesReport> reportList = serviceRepository1.findRequestbyReportId();
        if (reportList != null) {
             model.addAttribute("reportList", reportList);
             return "admin_report";
        } 
        model.addAttribute("status", "No Volunteer is there");
        return "admin_report";
  }
	
/*End of Admin Service Page*/
	/*
	 * @author Asfak Rahaman
	 */
/* start of admin help*/
    @RequestMapping("/show_admin_help_service_info2")// For admin to show the help for the service
    public String show_admin_help_service_info( Model model) {
          List<Help> requestList = helpRepository.findRequestbyId();
          if (requestList != null) {
               model.addAttribute("requests", requestList);
               return "help_request_id";
          } 
          return "help_request_id";
    }
    @RequestMapping("/admin_help_service_info1")
    public String searchRequestById(@RequestParam int requestId,Model model) {
          Help requestId1= helpRepository.findRequestbyId1(requestId);
          if (requestId1 != null) {
               model.addAttribute("rid", requestId1.getRequestId());
               model.addAttribute("uid", requestId1.getUserId());
               model.addAttribute("udis", requestId1.getDescription());
               model.addAttribute("resolution", "hello");
               //model.addAttribute("events", requestId1.getRequestId());
               model.addAttribute(new Help());
               return "admin_help_resolution";
          } 
          model.addAttribute("events", "No event with such name found");
          return "admin_home";
    
    }
    @RequestMapping("/save_admin_help_service_info")
    public String save_admin_help_service_info(@ModelAttribute Help help,Model model) {
    helpRepository.save(help);
    model.addAttribute("resolutionmsg", "Solution updated successfully");
    return "admin_home";
    
    }
/* End of Admin help Page*/
    /*
     * @ author Asfak Rahaman, Avinash R G, Prasanth Bhimana
     */
/*start of user help page*/
    
    @RequestMapping("/user_help")
	public String userHelp() {
		return "user_help";
	}
    @RequestMapping("/user_home")
	public String userHome() {
		return "user_home";
	}
    @RequestMapping("/user_contact")
	public String userContact() {
		return "user_contact";
	}
    @RequestMapping("/user_search")
   	public String userSearch() {
   		return "user_search";
   	}
    @RequestMapping("/user_issue")
	public String user_issue(@ModelAttribute("help") Help help) {
    	help=new Help();
		return "user_issue";
	}
    @RequestMapping(value = "/saveissue", method = RequestMethod.POST)// For users to raise issues
	public String saveUser(@Valid @ModelAttribute("help") Help help, BindingResult bindingResult, Model model) {
    	//List<Help> helplist=helpRepository.findAll();
    	//model.addAttribute("hlist",help.getRequestId());
    	//model.addAttribute("rid",help.getRequestId());
    	//System.out.println("requesId="+help.getRequestId());
    	helpRepository.save(help);
		model.addAttribute("issuestatus", "Successfully Raised Issue");
		return "user_help";
	}
    @RequestMapping("/user_resolution1")// Admin will provide resolution for users for their complaints.
    public String user_resolution1(@RequestParam String userId, Model model) {
          List<Help> requestList = helpRepository.findRequestbyId2(userId);
          if (requestList != null) {
               model.addAttribute("requests", requestList);
               return "user_help_requestId";
          } 
          return "user_help_requestId";
    }
    @RequestMapping("/user_resolution2")
    public String searchRequestById2(@RequestParam int requestId,Model model) {
          Help requestId1= helpRepository.findRequestbyId1(requestId);
          if (requestId1 != null) {
               model.addAttribute("rid", requestId1.getRequestId());
               model.addAttribute("uid", requestId1.getUserId());
               model.addAttribute("udis", requestId1.getDescription());
               model.addAttribute("ures",requestId1.getResolution());
//               model.addAttribute("events", requestId1.getRequestId());
               model.addAttribute(new Help());
               return "user_resolution";
          } 
          model.addAttribute("events", "No event with such name found");
          return "user_home";
    
    }
    @RequestMapping("/save_user_resolution")
    public String save_user_resolution(@ModelAttribute Help help,Model model) {
    helpRepository.save(help);
    model.addAttribute("resolutionmsg", "Solution updated successfully");
    return "user_home";
    }
    
/* end of user Help page */
    /*
     * @author Prasanth Bhimana
     */
/*start of user complain page*/
    @RequestMapping(value="/user_registercomplain")// For users to register a complaint
    public String addTopics(@ModelAttribute("complains") Complains complains)
    {
    	complains=new Complains();
           return "user_registercomplain";
                        
    }
    @RequestMapping(value="/saveUserComplains",method = RequestMethod.GET)
    public String addTopics(@Valid @ModelAttribute("complains") Complains complains,BindingResult bindingResult,HttpServletRequest request,Model model)
    {
           HttpSession session=request.getSession();
           System.out.println("Hello");
           if(bindingResult.hasErrors()) {
                  System.out.println("UI details are not correct");
                  return "user_registercomplain";
           }
           System.out.println(complains.getComplainSubTopic());
         
          complainRepository.save(complains);
          session.setAttribute("msg","Thank you for your suggetion, your problem will be solved within 7 working days.");
    return "redirect:/user_registercomplain";
           	
    }
	/* End of user complain page*/
    /*
     * @author Avinash R G
     */
    /* Start of user volunteer */
    @RequestMapping("/user_volunteer")// For user to volunteer a service that are available.
    public String userVolunteer(Model model) {
    List<Services> servicesList = serviceRepository.findAllServices();
    model.addAttribute("servicesList", servicesList);
    if(servicesList.isEmpty()) {
    	model.addAttribute("status", "No Services Found");
    }
    return "user_volunteer";
    }
   
    @RequestMapping(value="/user_register_volunteer", method=RequestMethod.GET)// Users are displayed with number of seats available so that they can volunteer a service. 
    public String userRegisterVolunteer(@RequestParam String serviceId,int seatsAvailable,String serviceName,HttpServletRequest request,Model model) {
    int seats = seatsAvailable;
    System.out.println(seats);
    if(seats == 0) {
    	String s=serviceId;
        System.out.println(s);
    	model.addAttribute("status", "Maximum Volunteers Nominated !");// Message displayed when volunteers are full
    }
    else {
    int seatsAvailable1=seats-1;// For users to register for a particular service
    System.out.println(seatsAvailable1);
    session=request.getSession();
    String userId=(String)session.getAttribute("userId");
    System.out.println(serviceName);  
    serviceRepository.updateVolunterServices(seatsAvailable1,userId, serviceId);
    ServicesReport report=new ServicesReport(serviceName,userId);
    serviceRepository1.save(report);
    List<Services> servicesList = serviceRepository.findAllServices();
    System.out.println(servicesList);
    model.addAttribute("servicesList", servicesList);
    model.addAttribute("registerstatus", "Registered Successfully"); 
    }
    return "user_volunteer";
    }
    /* End of user volunteer */
    
}
