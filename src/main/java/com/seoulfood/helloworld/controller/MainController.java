package com.seoulfood.helloworld.controller;

import com.seoulfood.helloworld.api.InstagramParserAPI;
import com.seoulfood.helloworld.domain.Cafe;
import com.seoulfood.helloworld.service.CafeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);
    private static String InstagramAccessToken = "";
    private final CafeService cafeService;

    @Autowired
    public MainController(CafeService cafeService) {
        this.cafeService = cafeService;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("cafes", cafeService.findAllCafe());
        return "index";
    }

    @RequestMapping(value = "/storeDetail", method = RequestMethod.GET)
    public String storeDetail(Model model, @RequestParam(value = "cafeNo", required = true) int cafeNo) throws Exception {


        //임시로 cafeno에 cafe네임을 들고오게 하였음 추후 수정예정
        logger.info("cafeNo  ====== " + cafeNo);


        Cafe cafeInformation = cafeService.getCafeInformation(cafeNo);
        InstagramParserAPI instagramParserAPI = new InstagramParserAPI(cafeInformation.getInsta_sch_tag().replaceAll(" ", ""));
        ArrayList<String> thumbnailArray = new ArrayList<>();
        try {
            thumbnailArray = instagramParserAPI.getThumbnailArray();
        } catch (Exception e) {
            thumbnailArray.add("/resources/img/" + cafeNo + ".jpg");
        } finally {
            model.addAttribute("instaThumbnails", thumbnailArray);
        }


        model.addAttribute("cafeName", cafeInformation.getCafe_nm());


        return "storeDetail";
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String map(Model model) {


        return "map";
    }

}
