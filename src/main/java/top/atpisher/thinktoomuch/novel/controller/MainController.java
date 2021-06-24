package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import top.atpisher.thinktoomuch.novel.service.ChapterService;


/**
 * @ClassName: MainController
 * @Author: l1957
 * @Date: 2021/4/2 09:13
 * @Description: TODO
 */
@Controller
public class MainController {
    @Autowired
    ChapterService chapterService;
    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping(value = {"main"},method = RequestMethod.GET)
    public String main(){
        return "main";
    }
}
