package top.atpisher.thinktoomuch.novel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import top.atpisher.thinktoomuch.novel.service.ManagerService;

import javax.servlet.http.HttpServletRequest;


/**
 * @ClassName: LoginController
 * @Author: l1957
 * @Date: 2021/4/23 09:01
 * @Description: TODO
 */
@Controller
public class LoginController {
    @Autowired
    private ManagerService managerService;
    /*
      跳转登录
       */
    @RequestMapping(value = {"","login"},method = RequestMethod.GET)
    public String login(){
        return "login";
    }
    /*
    登录逻辑
     */
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login( String mname, String mpwd,HttpServletRequest httpServletRequest){
        if(managerService.login(mname, mpwd)){
            httpServletRequest.getSession().setAttribute("mname",mname);
            return "redirect:/main";
        }else{
            return login();
        }
    }

    /**
     * 登出
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String loginout(HttpServletRequest httpServletRequest){
        //彻底清除session信息
        httpServletRequest.getSession().invalidate();
        return login();
    }
}
