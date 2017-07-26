package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Book;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DataBookDAO {

    List<Book> getBookInfo();

    String getBookName(String id);

}
