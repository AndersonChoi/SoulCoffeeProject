package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.dao.CafeDAO;
import com.seoulfood.helloworld.dao.CafeTagDAO;
import com.seoulfood.helloworld.domain.Cafe;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("CafeTagService")
public class CafeTagServiceImpl implements CafeTagService {

    @Resource(name = "CafeTagDAO")
    private CafeTagDAO cafeTagDAO;

    public List<String> findCafeTags(int cafeNo) {
        return cafeTagDAO.findCafeTags(cafeNo);
    }

}