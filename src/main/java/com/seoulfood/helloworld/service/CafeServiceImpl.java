package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.dao.CafeDAO;
import com.seoulfood.helloworld.domain.Cafe;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("DataBookService")
public class CafeServiceImpl implements CafeService {

    @Resource(name = "dataDAO")
    private CafeDAO cafeDAO;

    public Cafe getCafeInformation(int cafe_seq_no) {
        return cafeDAO.getCafeInformation(cafe_seq_no);
    }

    public List<Cafe> findAllCafe() {
        return cafeDAO.findAllCafe();
    }

}