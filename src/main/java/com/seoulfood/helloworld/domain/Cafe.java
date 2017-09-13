package com.seoulfood.helloworld.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by 1003855 on 2017. 8. 14..
 */
@Getter
@Setter
public class Cafe {
    private String cafe_seq_no;
    private String cafe_nm;
    private String cafe_nm_en;
    private String cafe_telno;
    private String cafe_bgn_tm;
    private String cafe_end_tm;
    private String road_addr_base;
    private String road_addr_dtls;
    private String lati_tude;
    private String longi_tude;
    private String emp_dsc_yn;
    private String emp_dsc_dtls;
    private String time_dsc_yn;
    private String time_dsc_dtls;
    private String membership_yn;
    private String membership_yype;
    private String only_takeout_yn;
    private String view_cnt;
    private String customer_rate5_cnt;
    private String customer_rate4_cnt;
    private String customer_rate3_cnt;
    private String customer_rate2_cnt;
    private String customer_rate1_cnt;
    private String customer_rate_total_cnt;
    private String insta_sch_tag;
    private String homepage;
    private String description;
    private String create_dt;
    private String update_dt;

}
