package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Cafe;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dataDAO")
public class CafeDAOImpl implements CafeDAO {

    @Autowired
    private SqlSession sqlSession;
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    public Cafe getCafeInformation(int cafe_seq_no){
        return sqlSession.selectOne("getCafeInfo",cafe_seq_no);
    }
    public List<Cafe> findAllCafe(){
        return sqlSession.selectList("findAllCafe");
    }

}
