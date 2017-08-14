package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.domain.Book;
import com.seoulfood.helloworld.domain.Cafe;

import java.util.List;

public interface DataBookService {

    List<Book> selectAllBook();
    List<Cafe> findAllCafe();

}
