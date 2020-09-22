package com.lisanbian.controller;

import com.lisanbian.pojo.FirstPage;
import com.lisanbian.pojo.User;
import com.lisanbian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@EnableWebMvc
@Controller("userController")
//@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")
    public ModelAndView login(User user,HttpServletRequest req,ModelAndView mav,Model model){
        User longin = userService.longin(user);
        System.out.println(longin);
        if(longin ==null){
            req.setAttribute("loginError","用户名或密码错误");
            mav.setViewName("login");
        }else {
            List<FirstPage> firstPages = userService.findAll();

            String username = user.getUsername();
            req.setAttribute("username",username);
            req.setAttribute("user",user);
            //创建Session对象，保存用户信息
            HttpSession session = req.getSession();
            session.setAttribute("user",longin);
            model.addAttribute("first",firstPages);
            mav.setViewName("first");
        }
        return mav;
    }

    /**
     * 用户注册
     */
    @RequestMapping("/regist.do")
    public String regist(User user){
        userService.registUser(user);
        System.out.println("用户信息已注册成功");
        return "login";

    }

    @RequestMapping("/userLoginOrRegist.do")
    public String userLoginOrRegist(){
        return "login";
    }

    /*个人中心*/
    @RequestMapping("/personal.do")
    public String turnPersonal(HttpServletRequest request, Model model) {
        String name = request.getParameter("username");
        User user = userService.queryUserInformation(name);
        List<User> data = new ArrayList<>();
        data.add(user);
        model.addAttribute("personData", data);
        return "personal";
    }

    /*修改密码跳转*/
    @RequestMapping("/updatePassword.do")
    public String updatePassword(HttpServletRequest request) {
        return "updatePassword";
    }

    /*修改密码业务*/
    @RequestMapping("/updAction.do")
    public String updAction(Model model, HttpServletRequest request, User user) {
        //获取用户名和密码
        String name = request.getParameter("username");
        String password = request.getParameter("password");

        User u = new User();
        u.setUsername(name);
        u.setPassword(password);

        String oldpassword = request.getParameter("oldpassword");

        User longin = userService.longin(u);

        if (longin == null) {//不存在匹配的用户名与密码
            request.setAttribute("oldPasswordError", "旧密码错误！！！");
            return "updatePassword";
        } else {
            user.setUsername(name);
            user.setPassword(password);
            User reg = userService.updatePassword(user);
            request.setAttribute("successPassword", "修改密码成功！！！");
            return "personal";
        }
    }

    /*显示old个人资料*/
    @RequestMapping("/updatePersonal.do")
    public String updatePersonal(HttpServletRequest request, User user, Model model) {
        String name = request.getParameter("username");
        User user1 = userService.queryUserInformation(name);
        List<User> data = new ArrayList<>();
        data.add(user1);
        model.addAttribute("oldPersonData", data);
        return "updatePersonal";
    }

   /*更新个人资料*/
    @RequestMapping("/newPerInfor.do")
    public String newPerInfor(HttpServletRequest request, User user) {
        String name = request.getParameter("username");
        user.setUsername(name);
        //    System.out.println(name);
        User perInfor = userService.updateUser(user);
        return "personal";
    }

    /*注销用户*/
    @RequestMapping("/deleteUser.do")
    public String deleteUser(HttpServletRequest request, User user) {
        String name = request.getParameter("username");

        //清除session值
        request.getSession().invalidate();
        user.setUsername(name);
        userService.deleteUser(name);
        return "login";
    }

  /*忘记密码跳转*/
    @RequestMapping("forgetPassword.do")
    public String forgetPassWord(HttpServletRequest request) {
        request.setAttribute("panduan", 1);
        return "forgetPassword";
    }

    /*忘记密码业务处理*/
    @RequestMapping("subForgetPassword.do")
    public String subForgetPassword(HttpServletRequest request, User user) {
        User u1 = userService.selectPassword(user);
        String password = u1.getPassword();
        if (password != null) {
            request.setAttribute("panduan", 2);
            request.setAttribute("password", password);
        } else {
            request.setAttribute("registError", "用户名或手机号错误！！！");
        }
        return "forgetPassword";
    }





}
