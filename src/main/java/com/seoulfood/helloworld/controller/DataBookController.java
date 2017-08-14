package com.seoulfood.helloworld.controller;

import com.seoulfood.helloworld.domain.Cafe;
import com.seoulfood.helloworld.service.DataBookService;
import com.seoulfood.helloworld.service.DataBookServiceImpl;
import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class DataBookController {

    private static final Logger logger = LoggerFactory.getLogger(DataBookController.class);
    private final DataBookService dataBookService;

    @Autowired
    public DataBookController(DataBookService dataBookService) {
        this.dataBookService = dataBookService;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {

        model.addAttribute("title", "Hello Title");
        List<Cafe> cafes = dataBookService.findAllCafe();
        JSONArray j = new JSONArray(dataBookService.findAllCafe());
        logger.debug("cafe json :"+j);

        for(Cafe cafe:cafes){
            logger.debug("cafe :"+cafe.getCafe_nm());
        }
        model.addAttribute("cafes",dataBookService.findAllCafe());

        return "index";
    }

    @RequestMapping(value = "/storeDetail", method = RequestMethod.GET)
    public String storeDetail(Model model) {


        return "storeDetail";
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String map(Model model) {


        return "map";
    }

}
