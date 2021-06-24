package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import top.atpisher.thinktoomuch.novel.dao.ChapterMapper;
import top.atpisher.thinktoomuch.novel.dao.NovelMapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.NovelType;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ChapterService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @ClassName: ChapterControlloer
 * @Author: l1957
 * @Date: 2021/6/10 18:04
 * @Description: TODO
 */
@Controller
@RequestMapping("chapter")
public class ChapterController {
    @Autowired
    ChapterService chapterService;
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    NovelMapper novelMapper;
    /**
     * 修改按钮查询数据
     * @param id
     * @return NovelType
     */
    @ModelAttribute
    public Chapter getNovel(Integer id){
        Chapter chapter;
        //id不为空，从数据库获取
        if (id!=null){
            chapter=chapterService.getChapterById(id);
        }else
            chapter=new Chapter();
        return chapter;
    }
    /**
     *  跳转到章节列表页
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return "chapter/chapter_list";
    }

    /**
     *跳转到章节信息提交页面
     * @return
     */
    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form(Chapter chapter, Model model){
        model.addAttribute("chapter",chapter);
        return "chapter/chapter_form";
    }

    /**
     * 显示章节详情
     * @param
     * @return
     */
    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String showNovelDetail(){
        return "chapter/chapter_detail";
    }

    /**
     *章节表单信息提交
     * @param chapter
     * @return
     */
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(Chapter chapter, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = chapterService.save(chapter);
        //保存成功
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/chapter/list";
        }
        //保存失败
        else{
            model.addAttribute("baseResult",baseResult);
            return "chapter/chapter_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    public BaseResult delete(Integer[] ids){
        BaseResult baseResult=null;
        //返回值了就删除成功
        if(ids.length!=0&&ids!=null){
            baseResult=BaseResult.success("删除数据成功");
            chapterService.deleteChaptersById(ids);
        }else
        {
            baseResult=BaseResult.fail("删除失败");
        }

        return baseResult;
    }
    /**
     * 分页查询
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "page",method = RequestMethod.GET)
    public PageInfo<Chapter> page(HttpServletRequest request, Chapter chapter){
        String strDraw=request.getParameter("draw");
        String strStart=request.getParameter("start");
        String strLength=request.getParameter("length");
        int draw = strDraw ==null ? 0 : Integer.parseInt(strDraw);
        int start = strStart ==null ? 0 : Integer.parseInt(strStart);
        int length = strLength ==null ? 10 : Integer.parseInt(strLength);

        //封装datatable需要的结果
        PageInfo<Chapter> page = chapterService.page(start, length, draw,chapter);

        return page;
    }
}
