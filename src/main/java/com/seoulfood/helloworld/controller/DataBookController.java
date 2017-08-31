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
    public String storeDetail(Model model, @RequestParam(value = "code", required = false) String code) throws Exception{
       /*
        boolean isRedirectNeeded = false;
        final String CLIENT_ID = "eee7a84a96814addbf63e38a4f75980c";
        final String CLIENT_SECRET = "cb0ce6bc07de49ca96648f8ce857a837";
        final String REDIRECT_URL = "http://localhost:8801/storeDetail.soul";
        final String URL = String.format("https://api.instagram.com/oauth/authorize/?client_id=%s&redirect_uri=%s&response_type=code", CLIENT_ID, REDIRECT_URL);


        if(InstagramAccessToken == null || "".equals(InstagramAccessToken)) {
            logger.debug("토큰이 존재하지 않음");

            if(code != null && !"".equals(code)) {
                logger.debug("파라미터로 넘어온 code를 이용해 accessToken을 가져오는 작업 수행");

                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.MULTIPART_FORM_DATA);

                MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
                params.add("client_id", CLIENT_ID);
                params.add("client_secret", CLIENT_SECRET);
                params.add("grant_type", "authorization_code");
                params.add("redirect_uri", REDIRECT_URL);
                params.add("code", code);

                String response = requestPost("https://api.instagram.com/oauth/access_token", headers, params);

                try {
                    JSONObject result = new JSONObject(response);

                    if(result.has("code")) {
                        logger.error("accessToken 가져오기 실패: " + result.toString());
                        throw new Exception();
                    }

                    String accessToken = result.getString("access_token");
                    logger.debug("accessToken 가져오기 성공: " + accessToken);
                    InstagramAccessToken = accessToken;
                }
                catch (Exception e) {

                }
            }
            else {
                logger.debug("파라미터도 비어있으므로 리다이렉션 수행");
                isRedirectNeeded = true;
            }
        }

        if(InstagramAccessToken != null && !"".equals(InstagramAccessToken)) {
            logger.debug("토큰이 존재하므로 정상적으로 수행 (code: " + InstagramAccessToken + ")");
            model.addAttribute("accessToken", InstagramAccessToken);
        }

        return isRedirectNeeded ? ("redirect:" + URL) : "storeDetail";

        */

        InstagramParserAPI instagramParserAPI = new InstagramParserAPI("카페블랙드럼");
        model.addAttribute("instaThumbnails",instagramParserAPI.getThumbnailArray());
        return "storeDetail";
    }

    public String requestPost(String url, HttpHeaders headers, MultiValueMap<String, String> params) {
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(params, headers);
        try {
            ResponseEntity<String> response = restTemplate.postForEntity(url, request, String.class);
            return response.getBody();
        }
        catch (HttpClientErrorException e) {
            return e.getResponseBodyAsString();
        }
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String map(Model model) {


        return "map";
    }

}
