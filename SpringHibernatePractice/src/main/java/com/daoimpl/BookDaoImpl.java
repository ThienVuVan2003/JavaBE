package com.daoimpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.BookDao;
import com.entity.Book;
import com.entity.dto.BookDTO;

@Repository
@Transactional
public class BookDaoImpl implements BookDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveBook(Book book) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(book);		
	}

}
