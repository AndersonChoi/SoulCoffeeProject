package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Cafe;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("CafeTagDAO")
public class CafeTagDAOImpl implements CafeTagDAO {

    @Autowired
    private SqlSession sqlSession;
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    public List<String> findCafeTags(int cafe_seq_no){
        return sqlSession.selectList("findCafeTags",cafe_seq_no);
    }

}
