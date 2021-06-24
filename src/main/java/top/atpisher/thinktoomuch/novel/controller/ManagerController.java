package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import top.atpisher.thinktoomuch.novel.model.Manager;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ManagerService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;


/**
 * @ClassName: ManagerController
 * @Author: l1957
 * @Date: 2021/4/2 08:41
 * @Description: TODO
 */
@Controller
@RequestMapping("manage")
public class ManagerController {
    @Autowired
    ManagerService managerService;

    /**
     * 修改按钮查询数据
     * @param id
     * @return
     */
    @ModelAttribute
    public Manager getManager(Integer id){
        Manager manager=null;
        //id不为空，从数据库获取
        if (id!=null){
            manager=managerService.getById(id);
        }else
            manager=new Manager();
        return manager;
    }

    /**
     * 跳转到用户列表页
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return "manager/manager_list";
    }

    /**
     *跳转到用户信息提交页面
     * @return
     */
    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form( Manager manager,Model model){
        model.addAttribute("manager",manager);
        return "manager/manager_form";
    }

    /**
     *用户表单信息提交
     * @param manager
     * @return
     */
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(Manager manager, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = managerService.save(manager);
        //保存成功
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/manage/list";
        }
        //保存失败
        else{
            model.addAttribute("baseResult",baseResult);
            return "manager/manager_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    public BaseResult delete(Integer[] ids){
        BaseResult baseResult=null;
        //返回值了就删除成功
        if(ids.length!=0&&ids!=null){
            baseResult=BaseResult.success("删除数据成功");
            managerService.deleteUsersById(ids);
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
    public PageInfo<Manager> page(HttpServletRequest request, Manager manager){
        String strDraw=request.getParameter("draw");
        String strStart=request.getParameter("start");
        String strLength=request.getParameter("length");
        int draw = strDraw ==null ? 0 : Integer.parseInt(strDraw);
        int start = strStart ==null ? 0 : Integer.parseInt(strStart);
        int length = strLength ==null ? 10 : Integer.parseInt(strLength);

        //封装datatable需要的结果
        PageInfo<Manager> page = managerService.page(start, length, draw,manager);

        return page;
    }

    /**
     * 显示用户详情
     * @param
     * @return
     */
    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String showdetail(){
        return "manager/manager_detail";
    }

    /**
     * 读取excel文件
     * @param excelFile
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/read" , method = RequestMethod.POST)
    public BaseResult  upload(MultipartFile excelFile){
        return managerService.read(excelFile);
    }

    /**
     * 导出excel
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/download" , method = RequestMethod.GET)
    public BaseResult download(HttpServletResponse response){
        response.setContentType("application/binary;charset=UTF-8");
        try{
            ServletOutputStream out=response.getOutputStream();
            try {
                //设置文件头：最后一个参数是设置下载文件名
                response.setHeader("Content-Disposition", "attachment;fileName=" +
                        URLEncoder.encode("用户信息表.xls", "UTF-8"));//生成表名
            } catch (UnsupportedEncodingException e1) {
                e1.printStackTrace();
            }
            String[] titles = { "用户id", "用户姓名", "用户密码","用户邮箱"};
            managerService.export(titles, out);
            return BaseResult.success();
        } catch(Exception e){
            e.printStackTrace();
            return BaseResult.fail();
        }

    }

}
