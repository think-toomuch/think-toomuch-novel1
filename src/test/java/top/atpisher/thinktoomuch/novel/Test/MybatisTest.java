package top.atpisher.thinktoomuch.novel.Test;

/**
 * @ClassName: MybatisTest
 * @Author: l1957
 * @Date: 2021/4/16 09:06
 * @Description: TODO
 */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import top.atpisher.thinktoomuch.novel.dao.ChapterContentMapper;
import top.atpisher.thinktoomuch.novel.dao.ManagerMapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.service.ChapterService;
import top.atpisher.thinktoomuch.novel.service.ManagerService;
import top.atpisher.thinktoomuch.novel.service.NovelService;
import top.atpisher.thinktoomuch.novel.utils.NovelAPI;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml","classpath:spring-context-druid.xml",
        "classpath:spring-context-mybatis.xml"})
public class MybatisTest {
    @Autowired
    ManagerService managerService;
    @Autowired
    ChapterService chapterService;
    @Autowired
    ManagerMapper managerMapper;
    @Autowired
    NovelService novelService;
    @Autowired
    ChapterContentMapper chapterContentMapper;
    @Test
    public void test() throws InterruptedException {
        List<Novel> list= NovelAPI.getNovel("陈道友而且");
        for(int i=0;i<list.size();i++) {
            //小说信息写进数据库
            novelService.insert(list.get(i));
            //小说章节信息进数据库
            List<Chapter> list1=NovelAPI.getChapter(list.get(i).getNid());
            for(int j=0;j<list1.size();j++) {
                chapterService.insert(list1.get(j));
                ChapterContent chapterContent=NovelAPI.getChapterContent(list1.get(j).getCid());
                chapterContentMapper.insert(chapterContent);
                Thread.sleep(600);
            }

        }

        System.out.println("导入完成！！！");
    }



}
