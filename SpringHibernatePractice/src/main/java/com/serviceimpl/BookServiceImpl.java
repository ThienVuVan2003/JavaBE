package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BookDao;
import com.entity.Book;
import com.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;

	@Override
	public void saveBook(Book book) {
		bookDao.saveBook(book);
	}

}
