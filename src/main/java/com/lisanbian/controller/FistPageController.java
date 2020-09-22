package com.lisanbian.controller;

import com.lisanbian.pojo.FirstPage;
import com.lisanbian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class FistPageController {
    @Autowired
    private UserService userService;
    @RequestMapping("/firstPage")
    public String firstPage(HttpServletRequest req){
        List<FirstPage> firstPages = userService.findAll();
        req.setAttribute("firstPages",firstPages);
        return "first";
    }

}
