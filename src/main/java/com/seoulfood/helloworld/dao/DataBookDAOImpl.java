package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Book;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dataDAO")
public class DataBookDAOImpl implements DataBookDAO{

    @Autowired
    private SqlSession sqlSession;
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    public List<Book> getBookInfo(){
        return sqlSession.selectList("getBookInfo");
    }
}
