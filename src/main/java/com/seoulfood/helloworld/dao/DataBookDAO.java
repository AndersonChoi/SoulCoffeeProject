package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Book;
import com.seoulfood.helloworld.domain.Cafe;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface DataBookDAO {
    List<Book> getBookInfo();
    List<Cafe> findAllCafe();
}
