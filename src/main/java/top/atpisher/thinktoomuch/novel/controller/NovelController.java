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
import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.model.NovelType;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.NTypeService;
import top.atpisher.thinktoomuch.novel.service.NovelService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName: NovelController
 * @Author: l1957
 * @Date: 2021/6/9 15:14
 * @Description: TODO
 */
@Controller
@RequestMapping("novel")
public class NovelController {
    @Autowired
    NovelService novelService;
    @Autowired
    NTypeService nTypeService;
    /**
     * 修改按钮查询数据
     * @param id
     * @return NovelType
     */
    @ModelAttribute
    public Novel getNovel(Integer id){
        Novel novel;
        //id不为空，从数据库获取
        if (id!=null){
            novel=novelService.getNovelById(id);
        }else
            novel=new Novel();
        return novel;
    }
    /**
     *  跳转到小说列表页
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return "novel/novel_list";
    }

    /**
     *跳转到类别信息提交页面
     * @return
     */
    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form(Novel novel, Model model){
        List<NovelType> novelTypes= nTypeService.getAllType();
        model.addAttribute("novelTypes",novelTypes);
        model.addAttribute("novel",novel);
        return "novel/novel_form";
    }

    /**
     * 显示用户详情
     * @param
     * @return
     */
    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String showNovelDetail(){
        return "novel/novel_detail";
    }

    /**
     *用户表单信息提交
     * @param novel
     * @return
     */
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(Novel novel, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = novelService.save(novel);
        //保存成功
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/novel/list";
        }
        //保存失败
        else{
            model.addAttribute("baseResult",baseResult);
            return "novel/novel_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    public BaseResult delete(Integer[] ids){
        BaseResult baseResult=null;
        //返回值了就删除成功
        if(ids.length!=0&&ids!=null){
            baseResult=BaseResult.success("删除数据成功");
            novelService.deleteNovelsById(ids);
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
    public PageInfo<Novel> page(HttpServletRequest request, Novel novel){
        String strDraw=request.getParameter("draw");
        String strStart=request.getParameter("start");
        String strLength=request.getParameter("length");
        int draw = strDraw ==null ? 0 : Integer.parseInt(strDraw);
        int start = strStart ==null ? 0 : Integer.parseInt(strStart);
        int length = strLength ==null ? 10 : Integer.parseInt(strLength);

        //封装datatable需要的结果
        PageInfo<Novel> page = novelService.page(start, length, draw,novel);

        return page;
    }
    /**
     * 读取excel文件
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/upload" , method = RequestMethod.POST)
    public BaseResult  upload(MultipartFile photoFile,String name,HttpServletRequest request) throws IOException {
        //        原始文件名称
        String originImgName = photoFile.getOriginalFilename();
        String suffixName = originImgName.substring(originImgName.lastIndexOf("."));
        // 使用UUID给图片重命名，并去掉四个“-”
        String newImgName = UUID.randomUUID().toString().replaceAll("-", "")+suffixName;
        //        校验文件目录
        String uploadOir = request.getServletContext().getRealPath("/upload");
        File file =new File(uploadOir);
        if (!file.exists()){
            file.mkdir();
        }
        System.out.println("文件上传路径"+uploadOir+"/"+newImgName);
        //        保存到指定位置
        photoFile.transferTo(new File(uploadOir,newImgName));
        return BaseResult.success("http://localhost:8888/upload/"+newImgName);
    }


}
