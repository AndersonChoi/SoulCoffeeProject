package com.seoulfood.helloworld.api;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;


/**
 * Created by 1003855 on 2017. 8. 16..
 */
public class InstagramParserAPI {

    private String tag;
    public InstagramParserAPI(String tag) {
        this.tag = tag;
    }


    public ArrayList<String> getThumbnailArray() throws Exception{
        Document doc = Jsoup.connect("https://www.instagram.com/explore/tags/"+tag+"/").get();
        Elements script = doc.getElementsByTag("script");
        JSONArray resultNodes;
        ArrayList<String> listdata;
        int i = 0;
        for (Element tag : script) {
            for (DataNode node : tag.dataNodes()) {
                System.out.println("====== " + (i++));
                if (node.getWholeData().toString().matches(".*sharedData.*")) {
                    String tempData = node.getWholeData();
                    String jsonStringData = tempData.substring(tempData.indexOf("{"), tempData.indexOf(";"));

                    JSONParser parser = new JSONParser();
                    Object obj = parser.parse(jsonStringData);
                    JSONObject jsonObj = (JSONObject) obj;
                    JSONObject entry_data = (JSONObject) jsonObj.get("entry_data");
                    JSONArray TagPage = (JSONArray) entry_data.get("TagPage");
                    JSONObject tagging = (JSONObject) TagPage.get(0);
                    JSONObject tagJSON = (JSONObject) tagging.get("tag");
                    JSONObject top_posts = (JSONObject) tagJSON.get("top_posts");
                    resultNodes = (JSONArray) top_posts.get("nodes");

                    System.out.println("====== " +resultNodes);
                    listdata = new ArrayList<String>();
                    if (resultNodes != null) {
                        for (i= 0;i<resultNodes.size();i++){
                            JSONObject nodeJSON = (JSONObject) resultNodes.get(i);
                            String thumbnail_src = (String)nodeJSON.get("thumbnail_src");
                            listdata.add(thumbnail_src);
                        }
                    }
                    return listdata;
                }
            }
        }
        return null;
    }


}
