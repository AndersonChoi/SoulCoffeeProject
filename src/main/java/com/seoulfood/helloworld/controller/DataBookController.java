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

        logger.debug("index() is executed!");

        model.addAttribute("title", "Hello Title");
        model.addAttribute("msg", "Hello Message");

        return "index";
    }

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getAllBooks(Model model) {
        logger.debug("getAllBooks() is executed!");

        model.addAttribute("books", dataBookService.selectAllBook());

        return "books";
    }

    @RequestMapping(value = "/books/{id}", method = RequestMethod.GET)
    public String getBookNameById(@PathVariable("id") String id, Model model) {

        logger.debug("getBookNameById() is executed!");

        //model.addAttribute("bookName", dataBookService.selectBookName(id));

        return "book";
    }

}
