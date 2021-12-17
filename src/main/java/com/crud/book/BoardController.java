package com.crud.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.book.conn.*;

/**
 * Handles requests for the application board.
 */
@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardDAO boardService;
	
//	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String boardList(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "/board/booklist";
	}
	
}
