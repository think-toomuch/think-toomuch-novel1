package top.atpisher.thinktoomuch.novel.controller.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.service.ChapterContentService;
import top.atpisher.thinktoomuch.novel.service.ChapterService;
import top.atpisher.thinktoomuch.novel.service.NovelService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/**前台页面控制器
 * @ClassName: FrontController
 * @Author: l1957
 * @Date: 2021/6/20 14:41
 * @Description: TODO
 */
@Controller
@RequestMapping(value = "front")
public class FrontController {
    @Autowired
    NovelService novelService;
    @Autowired
    ChapterService chapterService;
    @Autowired
    ChapterContentService chapterContentService;
    /**
     * 跳转首页
     * @return
     */
    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String frontIndex(Model model){
        //首页大图展示
        model.addAttribute("noveitems",novelService.randomSelectNovel(4,""));
        //经典推荐
        model.addAttribute("classicnoveitems",novelService.randomSelectNovel(9,""));
        //玄幻小说
        model.addAttribute("fantasynoveitems",novelService.randomSelectNovel(12,"玄幻"));
        //历史军事
        model.addAttribute("historynoveitems",novelService.randomSelectNovel(12,"历史军事"));
        //城市小说
        model.addAttribute("citynoveitems",novelService.randomSelectNovel(12,"都市言情"));
        //游戏竞技
        model.addAttribute("gamernoveitems",novelService.randomSelectNovel(12,"游戏竞技"));
        //网游小说
        model.addAttribute("onlinegamenoveitems",novelService.randomSelectNovel(12,"网游小说"));
        //武侠仙侠
        model.addAttribute("sciencenoveitems",novelService.randomSelectNovel(12,"武侠仙侠"));
        //最新入库小说
        model.addAttribute("latestnoveitems",novelService.latestNovel(30,""));
        //最新更新小说
        model.addAttribute("latestupdatenoveitems",novelService.latestUpdateNovel(30,""));
        return "front/index";
    }

    /**
     * 小说搜索页
     * @param keyWord
     * @param model
     * @return
     */
    @RequestMapping(value = "search",method = RequestMethod.GET)
    public String searchNovel(String keyWord, Model model){
        List<Novel> novels=novelService.selectNovelByKeyWord(keyWord);
        model.addAttribute("keyWord",keyWord);
        model.addAttribute("novels",novels);
        return "front/search";
    }
    @RequestMapping(value = "typeindex",method = RequestMethod.GET)
    public String typeIndex(Model model,String nType){
        model.addAttribute("nType",nType);
        //首页大图展示
        model.addAttribute("noveitems",novelService.randomSelectNovel(6,nType));
        //最新入库小说
        model.addAttribute("latestnoveitems",novelService.latestNovel(30,nType));
        //最新更新小说
        model.addAttribute("latestupdatenoveitems",novelService.latestUpdateNovel(30,nType));
        return "front/fiction_type";
    }

    @RequestMapping(value = "rankindex",method = RequestMethod.GET)
    public String rankIndex(Model model,String nType){
        return "front/fiction_rank";
    }
    /**
     * 跳转小说详情页
     * @param model
     * @return
     */
    @RequestMapping(value = "fdetail",method = RequestMethod.GET)
    public String fictionDetail(Model model,Integer id){
        Novel novel=novelService.getNovelById(id);
        List<Chapter> chapters=chapterService.selectChapterByNid(novel.getNid());
        List<Chapter> latestChapters=chapterService.latestChapter(novel.getNid(),9);
        model.addAttribute("novel",novel);
        model.addAttribute("chapters",chapters);
        model.addAttribute("latestChapters",latestChapters);
        return "front/fiction_detail";
    }
    @RequestMapping(value = "fcontent",method = RequestMethod.GET)
    public String fictionContent(Model model,String id){
        Chapter chapter=chapterService.getChapterById(Integer.parseInt(id));
        Novel novel=novelService.getNovelByNid(chapter.getNid());
        model.addAttribute("chapter",chapter);
        model.addAttribute("novel",novel);
        model.addAttribute("chaptercontent",chapterContentService.selectContentByCid(chapter.getCid()));
        return "front/fiction_content";
    }

    @RequestMapping(value = "fcontentnext",method = RequestMethod.GET)
    public String fictionContentNext(Model model,int id){
        ChapterContent chapterContent=chapterContentService.getChapterContentById(id);
        Chapter chapter=chapterService.getChapterByCid(chapterContent.getCid());
        Novel novel=novelService.getNovelByNid(chapter.getNid());
        model.addAttribute("chapter",chapter);
        model.addAttribute("novel",novel);
        model.addAttribute("chaptercontent",chapterContent);
        return "front/fiction_content";
    }

    /**
     * 小说TXT下载
     * @param httpServletResponse
     * @throws Exception
     */
    @RequestMapping(value = "dowtxt",method = RequestMethod.GET)
    public void kldTakeMobile(HttpServletResponse httpServletResponse,String nid) throws Exception{
        List<Chapter> chapters=chapterService.selectChapterByNid(nid);
        StringBuilder sb = new StringBuilder();
        //小说标题
        sb.append(novelService.getNovelByNid(nid).getNname()).append("\n");
        for (int i=0;i<chapters.size();i++){
            //小说章节标题
            sb.append(chapters.get(i).getCname()).append("\n");
            //小说内容
            String value = chapterContentService.selectContentByCid(chapters.get(i).getCid()).getCcontent();
            sb.append(value).append("\n");
        }
        String title=novelService.getNovelByNid(nid).getNname();
        httpServletResponse.setCharacterEncoding("utf-8");
        //设置文件ContentType类型，这样设置，会自动判断下载文件类型
        httpServletResponse.setContentType("text/plain");
        //设置文件头：最后一个参数是设置下载文件名
        httpServletResponse.setHeader("Content-Disposition", "attachment;filename="+ genAttachmentFileName( title, "JSON_FOR_UCC_") +".txt");
        try{
            //用流将数据写给前端
            OutputStream os = httpServletResponse.getOutputStream();
            os.write(sb.toString().getBytes("utf8"));
            os.flush();
            os.close();
        }catch (IOException ioe){
            ioe.printStackTrace();
        }
    }
    //防止中文文件名显示出错

    public String genAttachmentFileName(String cnName, String defaultName) {
        try {
            cnName = new String(cnName.getBytes("gb2312"), "ISO8859-1");
        } catch (Exception e) {
            cnName = defaultName;
        }
        return cnName;
    }
}
