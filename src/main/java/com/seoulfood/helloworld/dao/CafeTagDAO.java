package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Cafe;

import java.util.List;

/**
 * Created by 1003855 on 2017. 9. 18..
 */
public interface CafeTagDAO {
    List<String> findCafeTags(int cafeNo);
}
