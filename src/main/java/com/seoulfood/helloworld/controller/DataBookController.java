package com.seoulfood.helloworld.controller;

import com.seoulfood.helloworld.api.InstagramParserAPI;
import com.seoulfood.helloworld.domain.Cafe;
import com.seoulfood.helloworld.service.DataBookService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Controller
public class DataBookController {

    private static final Logger logger = LoggerFactory.getLogger(DataBookController.class);
    private static String InstagramAccessToken = "";
    private final DataBookService dataBookService;

    @Autowired
    public DataBookController(DataBookService dataBookService) {
        this.dataBookService = dataBookService;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("cafes",dataBookService.findAllCafe());
        return "index";
    }

    @RequestMapping(value = "/storeDetail", method = RequestMethod.GET)
    public String storeDetail(Model model, @RequestParam(value = "cafeNo", required = true) String cafeNo) throws Exception{


        //임시로 cafeno에 cafe네임을 들고오게 하였음 추후 수정예정
        System.out.println("cafeNo  ====== " +cafeNo);

        InstagramParserAPI instagramParserAPI = new InstagramParserAPI(cafeNo.replaceAll(" ", ""));
        model.addAttribute("instaThumbnails",instagramParserAPI.getThumbnailArray());
        model.addAttribute("cafeName",cafeNo);





        return "storeDetail";
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String map(Model model) {


        return "map";
    }

}
