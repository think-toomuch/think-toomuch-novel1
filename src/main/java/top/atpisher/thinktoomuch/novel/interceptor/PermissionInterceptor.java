package top.atpisher.thinktoomuch.novel.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: PermissionInterceptor
 * @Author: l1957
 * @Date: 2021/6/22 21:31
 * @Description: TODO
 */
public class PermissionInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        // 如果请求来自登录页
        if (modelAndView!=null&&modelAndView.getViewName()!=null&&modelAndView.getViewName().endsWith("login")) {
            String mname= (String) httpServletRequest.getSession().getAttribute("mname");
            if(mname!=null){
                // 已经登陆过则直接重定向到首页不再显示登录页
                httpServletResponse.sendRedirect("/main");
            }

        }
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

