package com.seoulfood.helloworld.dao;

import com.seoulfood.helloworld.domain.Cafe;

import java.util.List;

public interface CafeDAO {
    Cafe getCafeInformation(int cafe_seq_no);
    List<Cafe> findAllCafe();
}
