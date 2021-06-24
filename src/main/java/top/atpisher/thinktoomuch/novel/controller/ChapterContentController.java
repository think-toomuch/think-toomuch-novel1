package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import top.atpisher.thinktoomuch.novel.dao.ChapterMapper;
import top.atpisher.thinktoomuch.novel.dao.NovelMapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ChapterContentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.*;

/**
 * @ClassName: ChapterContentController
 * @Author: l1957
 * @Date: 2021/6/23 16:37
 * @Description: TODO
 */
@Controller
@RequestMapping(value = "chaptercontent")
public class ChapterContentController {
    @Autowired
    ChapterContentService chapterContentService;
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
    public ChapterContent getChapterContentById(Integer id){
        ChapterContent chapterContent;
        //id不为空，从数据库获取
        if (id!=null){
            chapterContent=chapterContentService.getChapterContentById(id);
        }else
            chapterContent=new ChapterContent();
        return chapterContent;
    }
    /**
     *  跳转到章节内容列表页
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return "chaptercontent/ccontent_list";
    }

    /**
     *跳转到章节内容信息提交页面
     * @return
     */
    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form(ChapterContent chapterContent, Model model){
        model.addAttribute("chapterContent",chapterContent);
        return "chaptercontent/ccontent_form";
    }

    /**
     * 显示章节内容详情
     * @param
     * @return
     */
    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String showNovelDetail(){
        return "chaptercontent/ccontent_detail";
    }

    /**
     *章节表单信息提交
     * @param chapterContent
     * @return
     */
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(ChapterContent chapterContent, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = chapterContentService.save(chapterContent);
        //保存成功
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/chaptercontent/list";
        }
        //保存失败
        else{
            model.addAttribute("baseResult",baseResult);
            return "chaptercontent/chapter_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    public BaseResult delete(Integer[] ids){
        BaseResult baseResult=null;
        //返回值了就删除成功
        if(ids.length!=0&&ids!=null){
            baseResult=BaseResult.success("删除数据成功");
            chapterContentService.deleteChapterContentsById(ids);
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
    public PageInfo<ChapterContent> page(HttpServletRequest request, ChapterContent chapterContent){
        String strDraw=request.getParameter("draw");
        String strStart=request.getParameter("start");
        String strLength=request.getParameter("length");
        int draw = strDraw ==null ? 0 : Integer.parseInt(strDraw);
        int start = strStart ==null ? 0 : Integer.parseInt(strStart);
        int length = strLength ==null ? 10 : Integer.parseInt(strLength);

        //封装datatable需要的结果
        PageInfo<ChapterContent> page = chapterContentService.page(start, length, draw,chapterContent);

        return page;
    }
    @ResponseBody
    @RequestMapping(value = "upload-img",method = RequestMethod.POST)
    public Map<String,Object> test1(MultipartFile editorFile, HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();

        // 获取文件后缀
        String fileName = editorFile.getOriginalFilename();
        String fileSuffix = fileName.substring(fileName.lastIndexOf("."));

        // 文件存放路径
        String filePath = request.getSession().getServletContext().getRealPath("/upload");

        // 判断路径是否存在，不存在则创建文件夹
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdir();
        }

        // 将文件写入目标
        file = new File(filePath, UUID.randomUUID() + fileSuffix);
        try {
            editorFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 返回给 wangEditor 的数据格式
        result.put("errno", 0);
        result.put("data", new String[]{"http://localhost:8888/upload/" + file.getName()});
        return result;
    }

}
