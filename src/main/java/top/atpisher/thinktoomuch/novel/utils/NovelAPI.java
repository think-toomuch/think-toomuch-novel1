package top.atpisher.thinktoomuch.novel.utils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.Novel;

/**
 * @ClassName:
 NovelAPI
 * @Author: l1957
 * @Date: 2021/3/27 16:55
 * @Description: TODO
 */
public class NovelAPI {
    // 标题获取小说
    public static List<Novel> getNovel(String name) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        CloseableHttpClient client = HttpClients.createDefault();
        // 创建一个get请求方法
        HttpGet get = new HttpGet("http://www.atpisher.top/fiction/search/title/" + name + "/1/15");
        CloseableHttpResponse response = null;
        // 接收小说
        List<Novel> list1 = new ArrayList<Novel>();
        try {
            // 执行请求，获取到响应
            response = client.execute(get);
            HttpEntity entity = response.getEntity();
            // 接收的数据转化为字符串，可以指定编码格式（中文：utf-8或者GBK）
            String en = EntityUtils.toString(entity, "utf-8");
            // 返回内容全部转为json对象
            JSONObject jsonObject = JSON.parseObject(en);
            // Map<String,Object> map=(Map<String,
            // Object>)JSONObject.parse(String.valueOf(jsonObject));

            if ("0".equals(jsonObject.get("code").toString())) {
                // 提取有用数据
                JSONObject jsonObject1 = jsonObject.getJSONObject("data");
                // 需要的所有数据
                JSONArray array = (JSONArray) jsonObject1.get("data");
                for (int i = 0; i < array.size(); i++) {
                    // 依次获取一条数据并存入java对象
                    JSONObject jsonObject2 = (JSONObject) array.get(i);
                    Novel novel = new Novel();
                    // System.out.println(jsonObject2.getString("fictionId"));
                    novel.setNid(jsonObject2.getString("fictionId"));
                    novel.setNname(jsonObject2.getString("title"));
                    novel.setNauthor(jsonObject2.getString("author"));
                    novel.setDescription(jsonObject2.getString("descs"));
                    novel.setNphoto(jsonObject2.getString("cover"));
                    novel.setNtype(jsonObject2.getString("fictionType"));
                    novel.setCreatetime(formatter.parse(jsonObject2.getString("updateTime")));
                    novel.setUpdatetime(new Date());
                    list1.add(novel);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                response.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return list1;
    }

    // 获取小说章节
    public static List<Chapter> getChapter(String nid) {
        CloseableHttpClient client = HttpClients.createDefault();
        // 创建一个get请求方法
        HttpGet get = new HttpGet("http://www.atpisher.top/fictionChapter/search/" + nid);
        CloseableHttpResponse response = null;
        List<Chapter> list = new ArrayList<>();
        try {
            // 执行请求，获取到响应
            response = client.execute(get);
            // EntityUtils实体类的工具包 ，将实体对象转成Stirng或者byte
            HttpEntity entity = response.getEntity();
            // 接收的数据转化为字符串，可以指定编码格式（中文：utf-8或者GBK）
            String en = EntityUtils.toString(entity, "utf-8");
            // 返回内容全部转为json对象
            JSONObject jsonObject = JSON.parseObject(en);
            if ("0".equals(jsonObject.get("code").toString())) {
                // 提取有用数据
                JSONObject jsonObject1 = jsonObject.getJSONObject("data");
                // 需要的所有数据
                JSONArray array = (JSONArray) jsonObject1.get("data");
                for (int i = 0; i < array.size(); i++) {
                    // 依次获取一条数据并存入java对象
                    JSONObject jsonObject2 = (JSONObject) array.get(i);
                    Chapter chapter = new Chapter();
                    // System.out.println(jsonObject2.getString("chapterId"));
                    // System.out.println(jsonObject2.getString("title"));
                    chapter.setNid(nid);
                    chapter.setCid(jsonObject2.getString("chapterId"));
                    chapter.setCname(jsonObject2.getString("title"));
                    chapter.setCreatetime(new Date());
                    // System.out.println(chapter.toString());
                    list.add(chapter);
                }
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (response != null)
                    response.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return list;
    }

    // 获取小说内容
    public static ChapterContent getChapterContent(String cid) {
        CloseableHttpClient client = HttpClients.createDefault();
        // 2.创建一个get请求方法
        HttpGet get = new HttpGet("http://www.atpisher.top/fictionContent/search/" + cid);
        CloseableHttpResponse response = null;
        ChapterContent chaptercontent = new ChapterContent();

        try {
            // 执行请求，获取到响应

            response = client.execute(get);
            // EntityUtils实体类的工具包 ，将实体对象转成Stirng或者byte
            HttpEntity entity = response.getEntity();
            // 接收的数据转化为字符串，可以指定编码格式（中文：utf-8或者GBK）
            String en = EntityUtils.toString(entity, "utf-8");
            // 返回内容全部转为json对象
            JSONObject jsonObject = JSON.parseObject(en);

            if ("0".equals(jsonObject.get("code").toString())) {

                // 提取有用数据
                JSONObject jsonObject1 = jsonObject.getJSONObject("data");
                // 需要的所有数据
                JSONObject jsonObject2 = jsonObject1.getJSONObject("data");

                JSONArray array = (JSONArray) jsonObject2.get("content");
                chaptercontent = new ChapterContent();
                chaptercontent.setCid(cid);
                chaptercontent.setNid(jsonObject2.getString("fictionId"));
                chaptercontent.setContentid(jsonObject2.get("id").toString());
                System.out.println(jsonObject2.get("id").toString()+"++++"+cid+"++++"+jsonObject2.getString("fictionId"));
                String content = "";

                for (int i = 0; i < array.size(); i++) {
                    // 依次获取一条数据并存入java对象

                    content += array.get(i);

                }
                chaptercontent.setCcontent(content.replaceAll("[\\x{10000}-\\x{10FFFF}]", ""));
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (response != null)
                    response.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return chaptercontent;
    }
}
