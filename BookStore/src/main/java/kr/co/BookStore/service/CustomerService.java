package kr.co.BookStore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.BookStore.dao.BookDAO;
import kr.co.BookStore.dao.CustomerDAO;
import kr.co.BookStore.vo.BookVO;
import kr.co.BookStore.vo.CustomerVO;


@Service
public class CustomerService {
	
	@Autowired
	private CustomerDAO dao;
	
	public void insertCustomer(CustomerVO vo) {
		dao.insertCustomer(vo);
	}
	
	public CustomerVO selectCustomer(String custId) {
		return dao.selectCustomer(custId);
	}

	public List<CustomerVO> selectCustomers() {
		return dao.selectCustomers();
	}
	
	public void updateCustomer(CustomerVO vo) {
		dao.updateCustomer(vo);
	}
	
	public void deleteCustomer(String custId) {
		dao.deleteCustomer(custId);
	}

}
