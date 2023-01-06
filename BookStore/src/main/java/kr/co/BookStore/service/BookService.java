package kr.co.BookStore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.BookStore.dao.BookDAO;
import kr.co.BookStore.vo.BookVO;


@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	public void insertBook(BookVO vo) {
		dao.insertBook(vo);
	}
	
	public BookVO selectBook(String bookId) {
		return dao.selectBook(bookId);
	}
	
	public List<BookVO> selectBooks() {
		return dao.selectBooks();
	}
	
	public void updateBook(BookVO vo) {
		dao.updateBook(vo);
	}
	
	public void deleteBook(String bookId) {
		dao.deleteBook(bookId);
	}

}
