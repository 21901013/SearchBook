package com.crud.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.user.*;

/**
 * Handles requests for the application board.
 */
@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	UserDAO userService;
	
//	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/addaccount", method = RequestMethod.GET)
	public String addPost() {
		return "addaccount";
	}
	
	@RequestMapping(value = "/addccount_ok", method = RequestMethod.POST)
	public String addPostOK(UserVO vo) {
		int i = userService.insertUser(vo);
		if(i == 0)
			System.out.println("Failed to add data");
		else
			System.out.println("Successfully added data!");
		return "";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		UserVO boardVO = userService.getUser(id);
		model.addAttribute("boardVO", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/edit_ok", method = RequestMethod.POST)
	public String editPostOK(UserVO vo) {
		int i = userService.updateUser(vo);
		if(i == 0)
			System.out.println("Failed to add data");
		else
			System.out.println("Successfully added data!");
		return "redirect:list";
	}
}
