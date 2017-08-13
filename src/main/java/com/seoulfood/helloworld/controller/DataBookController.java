package com.seoulfood.helloworld.controller;

import com.seoulfood.helloworld.service.DataBookService;
import com.seoulfood.helloworld.service.DataBookServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        model.addAttribute("msg", "Hello Message");

        return "index";
    }

    @RequestMapping(value = "/storeDetail", method = RequestMethod.GET)
    public String getAllBooks(Model model) {


        return "storeDetail";
    }


}
