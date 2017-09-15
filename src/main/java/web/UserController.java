package web;


import entity.UserBase;
import entity.UserInfo;
import service.UserBaseService;
import tool.Token;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping(value="/user",produces="text/html;charset=UTF-8")
public class UserController {
    private static final Logger logger = (Logger) LoggerFactory.getLogger(UserController.class);
    
    @Autowired
    private UserBaseService userBaseService;
    
    @RequestMapping(value="/list",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView allUser(Model model,
    		HttpServletRequest request,
    		HttpServletResponse response,
    		HttpSession session) {
    	Cookie cookies[] = request.getCookies();
        System.out.println("@@Cookie长度:" + cookies.length);
        
        
        session.getAttribute("user_login_id");
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
            	System.out.println(cookies[i].getName());
            	System.out.println(cookies[i].getValue());
            	System.out.println(cookies[i].getMaxAge());
            }
           } else {
            System.out.println("没有Cookie");
           }
        
        List<UserBase> list = this.userBaseService.queryAllUser();
        // 将其保存在ModelAndView中,用于在jsp列表页面展示
        System.out.println(list);
        model.addAttribute("list",list);
        return new ModelAndView("/list");
    }
    /**
     * 
     * @param request
     * @param response
     * @return 登录页面
     */
    @RequestMapping(value="/login",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView Login(HttpServletRequest request,
    		HttpServletResponse response) {
        System.out.println("login");
        return new ModelAndView("/login");
    }
    @RequestMapping(value="/loginUser",method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView loginUser(HttpServletRequest request,
    		HttpServletResponse response,
    		HttpSession session) {
        // 将其保存在ModelAndView中,用于在jsp列表页面展示
    	System.out.println("loginUser");
    	String a=request.getParameter("username");
    	String b=request.getParameter("password");
    	System.out.println(a);
    	System.out.println(b);
    	UserInfo userlog= new UserInfo();
    	userlog.setLoginname(a);
    	userlog.setLoginpass(b);
    	List<UserInfo> list=userBaseService.queryUserId(userlog);
    	
    	/*System.out.println(jsonArray.toString());
    	System.out.println("!!!"+jsonArray.getJSONObject(0).getString("userid"));
    	String user_id=jsonArray.getJSONObject(0).getString("userid");*/
    	
    	if(list.size()>0){
    		net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list);
        	String username = jsonArray.getJSONObject(0).getString("username");
    		Token token= new Token();
    		session.setAttribute("user_login_ticket", token.getTokenString(session));
    		session.setAttribute("username", username);
    		session.setMaxInactiveInterval(5);  //默认为秒
            System.out.println("登录成功");
            return new ModelAndView("/succ");
    	}else{
    		System.out.println("登录失败");
    		return new ModelAndView("/fla");
    	} 
    }   
}
