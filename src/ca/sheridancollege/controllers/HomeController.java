package ca.sheridancollege.controllers;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ca.sheridancollege.beans.Dog;
import ca.sheridancollege.beans.SendEmail;
import ca.sheridancollege.dao.DAO;;

@Controller
public class HomeController {
	DAO dao = new DAO();
	@RequestMapping("/")
	public String showHome() throws AddressException, MessagingException {
		return "home";
	}
	
	
	@RequestMapping("/insert")
	public String insertDogs() {
		DAO dao = new DAO();
		dao.generateDummyRecord();
		return "home";
	}
	
	
	@RequestMapping("/register")
	public String showRegistration(Model model) {
		Dog d = new Dog();
		model.addAttribute("dog", d);
		return "register";
	}
	
	
	@RequestMapping("/dogRegister")
	public String RegisterDog(Model model, @ModelAttribute Dog d) {

		dao.addDog(d);
		return "home";
	}
	
	
	@RequestMapping("/search")
	public String showSearch(Model model) {
		return "search";
	}
	
	@RequestMapping("/dogSearch")
	public String dogSearch(Model model, @RequestParam String searchBy, @RequestParam String inputText) {
		List<Dog> dogsList  = dao.querySearchByValueCriteria(searchBy, inputText);
		System.out.println(dogsList);
		model.addAttribute("dogsList", dogsList);
		return "search";
	}
	
	// display dog list jsp
	@RequestMapping("/displayDogList")
	public String showdisplayDogList(Model model) {
		model.addAttribute("dogsList", dao.getDogs());
		return "displayDogList";
	}
	
	
	@RequestMapping(value="editLink/{entryNumber}")
	
	public String edit(Model model, @PathVariable int entryNumber) {
		Dog d = dao.queryByID(entryNumber);
		if (d.getEntryNumber() != 0) {
			dao.deleteDog(entryNumber);
		}
		model.addAttribute("dog",d);
		return "register";
	}
	
	@RequestMapping(value="deleteLink/{entryNumber}")
	
	public String delete(Model model, @PathVariable int entryNumber) {
		Dog d = dao.queryByID(entryNumber);
		if (d.getEntryNumber() != 0) {
			dao.deleteDog(entryNumber);
		}
		return "displayDogList";
	}

	@RequestMapping("/showListPartFive")
    public String showList (Model model) {
		model.addAttribute("dogsList", dao.partFive());
        return "/showListPartFive";
   }
	
	@RequestMapping("/handlerLogin")
	public String showHandlerDogList(Model model) {
		return "handlerLogin";
	}
	@RequestMapping(value="friday")
	public String showHandleFridayShows(Model model) {
		List list = dao.querySearchByValueCriteria("dayOfShow", "Jan-4-2019");
		model.addAttribute("dogsList", list);
		return "handlerLogin";
	}
	@RequestMapping(value="/saturday")
	public String showHandlesaturdayShows(Model model) {
		List list = dao.querySearchByValueCriteria("dayOfShow", "Jan-5-2019");
		model.addAttribute("dogsList", list);
		return "handlerLogin";
	}
	@RequestMapping(value="/sunday")
	public String showHandlesundayShows(Model model) {
		List list = dao.querySearchByValueCriteria("dayOfShow", "Jan-6-2019");
		model.addAttribute("dogsList", list);
		return "handlerLogin";
	}
	
// display dog list jsp
	@RequestMapping("/awards")
	public String assignAwards(Model model) {
		model.addAttribute("dogsList", dao.getDogs());
		return "awards";
	}
	@RequestMapping(value="assign/{entryNumber}")
	
	public String assign(Model model, @PathVariable int entryNumber) {
		Dog d = dao.queryByID(entryNumber);

		model.addAttribute("dog",d);
		return "assignAward";
	}
	@RequestMapping("/dogAwardsAssign")
	public String RegisterDogRegisterDog(Model model, @ModelAttribute Dog d) {
		dao.assAwards(d);
		return "assignAward";
	}
}
