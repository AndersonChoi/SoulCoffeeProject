package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.domain.Cafe;

import java.util.List;

/**
 * Created by 1003855 on 2017. 9. 18..
 */
public interface CafeTagService {

    List<String>  findCafeTags(int cafe_seq_no);
}
