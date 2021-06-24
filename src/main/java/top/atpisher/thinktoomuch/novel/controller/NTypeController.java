package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import top.atpisher.thinktoomuch.novel.model.NovelType;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.NTypeService;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName: NTypeController
 * @Author: l1957
 * @Date: 2021/6/8 08:24
 * @Description: TODO
 */
@Controller
@RequestMapping("ntype")
public class NTypeController {
    @Autowired
    NTypeService nTypeService;

    /**
     * 修改按钮查询数据
     * @param id
     * @return NovelType
     */
    @ModelAttribute
    public NovelType getNType(Integer id){
        NovelType novelType;
        //id不为空，从数据库获取
        if (id!=null){
            novelType=nTypeService.getTypeById(id);
        }else
            novelType=new NovelType();
        return novelType;
    }
    /**
     *  跳转到类别列表页
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return "noveltype/ntype_list";
    }

    /**
     *跳转到类别信息提交页面
     * @return
     */
    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form(NovelType novelType, Model model){
        model.addAttribute("novelType",novelType);
        return "noveltype/ntype_form";
    }

    /**
     * 显示用户详情
     * @param
     * @return
     */
    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String showdetail(){
        return "noveltype/ntype_detail";
    }

    /**
     *用户表单信息提交
     * @param novelType
     * @return
     */
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(NovelType novelType, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = nTypeService.save(novelType);
        //保存成功
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/ntype/list";
        }
        //保存失败
        else{
            model.addAttribute("baseResult",baseResult);
            return "noveltype/ntype_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    public BaseResult delete(Integer[] ids){
        BaseResult baseResult=null;
        //返回值了就删除成功
        if(ids.length!=0&&ids!=null){
            baseResult=BaseResult.success("删除数据成功");
            nTypeService.deleteTypesById(ids);
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
    public PageInfo<NovelType> page(HttpServletRequest request, NovelType novelType){
        String strDraw=request.getParameter("draw");
        String strStart=request.getParameter("start");
        String strLength=request.getParameter("length");
        int draw = strDraw ==null ? 0 : Integer.parseInt(strDraw);
        int start = strStart ==null ? 0 : Integer.parseInt(strStart);
        int length = strLength ==null ? 10 : Integer.parseInt(strLength);

        //封装datatable需要的结果
        PageInfo<NovelType> page = nTypeService.page(start, length, draw,novelType);

        return page;
    }
}
