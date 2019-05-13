package com.smile.amazon.interceptor;

import com.smile.amazon.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User user = (User)request.getSession().getAttribute("user");
        if(user == null){
            if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){
                //如果是ajax请求响应头会有，x-requested-with
                response.setContentType("application/json;charset=UTF-8");
                response.getWriter().println("0");
                //response.setHeader("sessionstatus", "timeout");//在响应头设置session状态
            }else{
                System.out.print("返回主页...");
                request.getRequestDispatcher("/user/login").forward(request,response);//转发到登录界面
            }
            return false;
        }else{
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
