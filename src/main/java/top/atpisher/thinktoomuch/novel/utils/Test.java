//package top.atpisher.thinktoomuch.novel.utils;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import top.atpisher.thinktoomuch.novel.dao.ChapterContentMapper;
//import top.atpisher.thinktoomuch.novel.dao.ManagerMapper;
//import top.atpisher.thinktoomuch.novel.model.Chapter;
//import top.atpisher.thinktoomuch.novel.model.ChapterContent;
//import top.atpisher.thinktoomuch.novel.model.Novel;
//import top.atpisher.thinktoomuch.novel.service.ChapterService;
//import top.atpisher.thinktoomuch.novel.service.NovelService;
//import top.atpisher.thinktoomuch.novel.service.impl.ChapterServiceImpl;
//import top.atpisher.thinktoomuch.novel.service.impl.NovelServiceImpl;
//
//import java.util.List;
//
///**
// * @ClassName: Test
// * @Author: l1957
// * @Date: 2021/6/21 11:37
// * @Description: TODO
// */
//public class Test {
//
//    public static void main(String[] args){
//        ChapterService chapterService=new ChapterServiceImpl();
//
//        NovelService novelService=new NovelServiceImpl();
//        ChapterContentMapper chapterContentMapper;
//        List<Novel> list= NovelAPI.getNovel("斗罗");
//        for(int i=0;i<list.size();i++) {
//            //小说信息写进数据库
//            novelService.insert(list.get(i));
//            //小说章节信息进数据库
//            List<Chapter> list1=NovelAPI.getChapter(list.get(i).getNid());
//            for(int j=0;j<list.size();j++) {
//                chapterService.insert(list1.get(i));
//                ChapterContent chapterContent=NovelAPI.getChapterContent(list1.get(j).getCid());
//                chapterContentMapper.insert(chapterContent);
//            }
//
//        }
//
//        System.out.println("导入完成！！！");
//    }
//}
