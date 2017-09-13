package com.seoulfood.helloworld.service;

import com.seoulfood.helloworld.domain.Cafe;

import java.util.List;

public interface CafeService {

    Cafe getCafeInformation(int cafe_seq_no);
    List<Cafe> findAllCafe();

}
