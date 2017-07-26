package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.dao.DataBookDAO;
import com.seoulfood.helloworld.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataBookServiceImpl implements DataBookService {


    @Autowired
    private DataBookDAO dataBookDAO;

    @Override
    public List<Book> selectAllBook() {
        return dataBookDAO.getBookInfo();
    }

    @Override
    public String selectBookName(String id) {
        return dataBookDAO.getBookName(id);
    }

}