package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.dao.DataBookDAO;
import com.seoulfood.helloworld.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("DataBookService")
public class DataBookServiceImpl implements DataBookService {

    @Resource(name="dataDAO")
    private DataBookDAO dataBookDAO;

    public List<Book> selectAllBook() {
        return dataBookDAO.getBookInfo();
    }

}