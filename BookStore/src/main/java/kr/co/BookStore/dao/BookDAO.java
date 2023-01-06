package kr.co.BookStore.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.BookStore.vo.BookVO;

@Repository
public class BookDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	
	public void insertBook(BookVO vo) {
		mybatis.insert("book.insertBook", vo);
	}
	
	public BookVO selectBook(String bookId) {
		return mybatis.selectOne("book.selectBook", bookId);
	}

	public List<BookVO> selectBooks() {
		return mybatis.selectList("book.selectBooks");
	}
	
	public void updateBook(BookVO vo) {
		mybatis.update("book.updateBook", vo);
	}
	
	public void deleteBook(String bookId) {
		mybatis.delete("book.deleteBook", bookId);
	}
	
}
