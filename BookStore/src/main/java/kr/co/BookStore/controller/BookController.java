package kr.co.BookStore.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.BookStore.service.BookService;
import kr.co.BookStore.vo.BookVO;

@Controller
public class BookController {
	
	@Autowired
	private BookService service;
	
	@GetMapping("/book/list")
	public String list(Model model) {
		List<BookVO> books = service.selectBooks();
		
		model.addAttribute("books",books);
		
		return "/book/list";
	}
	
	
	@GetMapping("/book/register")
	public String register() {
		return "/book/register";
	}
	
	
	@PostMapping("/book/register")
	public String register(BookVO vo) {		
		service.insertBook(vo);
		return "redirect:/book/list";
	}
	
	@GetMapping("/book/modify")
	public String modify(Model model,String bookId) {
		BookVO book = service.selectBook(bookId);
		model.addAttribute("book", book);
		return "/book/modify";
	}
	
	@PostMapping("/book/modify")
	public String modify(BookVO vo) {
		service.updateBook(vo);
		return"redirect:/book/list";
	}
	
	@GetMapping("/book/delete")
	public String deiete(String bookId) {	
		
		service.deleteBook(bookId);
		return"redirect:/book/list";
	}
	
	
}
