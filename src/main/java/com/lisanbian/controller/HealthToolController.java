package com.lisanbian.controller;

import com.lisanbian.service.HealthToolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HealthToolController {

    @Autowired
    private HealthToolService healthToolService;

    /*head中点击跳转BMI计算器页面*/
    @RequestMapping("/BMI.do")
    public String turnBMI(HttpServletRequest request) {
        request.setAttribute("panduan", 1);
        return "BMI";
    }

    /*BMI业务处理过程*/
    @RequestMapping("/CBMI.do")
    public String CBMI(HttpServletRequest request) {
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        double h = Double.parseDouble(height);
        double w = Double.parseDouble(weight);
        double re = healthToolService.CalculationBMI(h / 100, w);
        int panduan = 2;
        request.setAttribute("panduan", panduan);
        request.setAttribute("result", re);
        return "BMI";
    }

    /*head中点击跳转理想体重计算器页面*/
    @RequestMapping("/DBW.do")
    public String turnDBW(HttpServletRequest request) {
        request.setAttribute("panduan", 1);
        return "DBW";
    }

    /*理想体重处理过程*/
    @RequestMapping("/CDBW.do")
    public String CDBW(HttpServletRequest request) {
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        double h = Double.parseDouble(height);
        double w = Double.parseDouble(weight);
        double re = healthToolService.CalculationDBW(h, w);
        int pd = healthToolService.judgeWeight(w, re * 0.9, re * 1.1);
        if (pd == 1) {
            request.setAttribute("state", "偏廋");
        }
        if (pd == 2) {
            request.setAttribute("state", "偏胖");
        }
        if (pd == 3) {
            request.setAttribute("state", "正常");
        }
        request.setAttribute("uweight", w);
        request.setAttribute("panduan", 2);
        request.setAttribute("result", re);
        request.setAttribute("min", re * 0.9);
        request.setAttribute("max", re * 1.1);
        return "DBW";
    }

    /*head中点击*/
    @RequestMapping("/DEN.do")
    public String turnDEN(HttpServletRequest request) {
        return "DEN";
    }

    /*DEN业务流程*/
    @RequestMapping("/CDEN.do")
    public String CDEN(HttpServletRequest request, Model model) {
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        String age = request.getParameter("age");
        String sex = request.getParameter("optionsRadios");
        double h = Double.parseDouble(height);
        double w = Double.parseDouble(weight);
        double a = Double.parseDouble(age);
        double s = Double.parseDouble(sex);
        System.out.println(s);
        double result = healthToolService.judgeDEN(h, w, a, s);
        model.addAttribute("result", result);
        return "DEN";
    }

    /*head点击跳转腰臀比（WHR）页面*/
    @RequestMapping("/WHR.do")
    public String turnWHR() {
        return "WHR";
    }

    /*WHR腰臀比业务流程*/
    @RequestMapping("/CWHR.do")
    public String CWHR(HttpServletRequest request, Model model) {
        String waist = request.getParameter("waist");
        String hip = request.getParameter("hip");
        double w = Double.parseDouble(waist);
        double h = Double.parseDouble(hip);
        double result = healthToolService.judgeWHR(w, h);
        model.addAttribute("result", result);
        return "WHR";
    }


}
