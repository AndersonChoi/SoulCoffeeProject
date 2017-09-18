package com.seoulfood.helloworld.controller;

import com.seoulfood.helloworld.api.InstagramParserAPI;
import com.seoulfood.helloworld.domain.Cafe;
import com.seoulfood.helloworld.service.CafeService;
import com.seoulfood.helloworld.service.CafeTagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);
    private static String InstagramAccessToken = "";
    private final CafeService cafeService;
    private final CafeTagService cafeTagService;

    @Autowired
    public MainController(CafeService cafeService, CafeTagService cafeTagService) {
        this.cafeService = cafeService;
        this.cafeTagService = cafeTagService;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("cafes", cafeService.findAllCafe());
        return "index";
    }

    @RequestMapping(value = "/storeDetail", method = RequestMethod.GET)
    public String storeDetail(Model model, @RequestParam(value = "cafeNo", required = true) int cafeNo) throws Exception {
        Cafe cafeInformation = cafeService.getCafeInformation(cafeNo);
        InstagramParserAPI instagramParserAPI = new InstagramParserAPI(cafeInformation.getInsta_sch_tag().replaceAll(" ", ""));
        ArrayList<String> thumbnailArray = new ArrayList<>();
        List<String> cafeTagArray = new ArrayList<>();

        cafeTagArray = cafeTagService.findCafeTags(cafeNo);

        try {
            thumbnailArray = instagramParserAPI.getThumbnailArray();
        } catch (Exception e) {
            thumbnailArray.add("/resources/img/" + cafeNo + ".jpg");
        } finally {
            model.addAttribute("instaThumbnails", thumbnailArray);
        }


        model.addAttribute("cafeName", cafeInformation.getCafe_nm());
        model.addAttribute("cafeBeginTime", cafeInformation.getCafe_bgn_tm());
        model.addAttribute("cafeEndTime", cafeInformation.getCafe_end_tm());
        model.addAttribute("cafeAddress", cafeInformation.getRoad_addr_dtls());
        model.addAttribute("cafeLatitude", cafeInformation.getLati_tude());
        model.addAttribute("cafeLongitude", cafeInformation.getLongi_tude());
        model.addAttribute("cafeTagArray", cafeTagArray);


        return "storeDetail";
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String map(Model model) {


        return "map";
    }

}
