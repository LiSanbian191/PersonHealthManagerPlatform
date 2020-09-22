package com.lisanbian.controller;

import com.lisanbian.pojo.HealthInformation;
import com.lisanbian.service.HealthInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HealthInformationController {
    @Autowired
    private HealthInformationService healthInformationService;

    /*健康百科显示列表*/
    @RequestMapping("/healthInformation.do")
    public String healthInformation(Model model) {
        List<HealthInformation> information = new ArrayList<HealthInformation>();
        information = healthInformationService.findAllInfor();
        model.addAttribute("infor", information);
        return "healthInformation";
    }

    /*文章列表*/
    @RequestMapping("/healInfoDetOne.do")
    public String healInfoDetOne(Model model, HttpServletRequest request, HealthInformation healthInformation) {
        String title = request.getParameter("title");

        System.out.println(title);
        List<HealthInformation> detOne = new ArrayList<>();
        healthInformation.setTitle(title);
        detOne = healthInformationService.findByTitle(title);
        System.out.println(detOne);
        for(HealthInformation hi :detOne){
            System.out.println(hi);
        }


        model.addAttribute("detOne", detOne);
        return "inforDet";
    }

    /*模糊查询文章*/
    @RequestMapping("/searchTitle.do")
    public String searchTitle(HttpServletRequest request, Model model, HealthInformation healthInformation) {
        String title = request.getParameter("title");
        List<HealthInformation> searchTitle = new ArrayList<HealthInformation>();
        searchTitle = healthInformationService.findBySimilar(title);
        //    for (Iterator<HealthInformation> iterator = searchTitle.iterator(); iterator.hasNext();) {
        //      HealthInformation ii = iterator.next();
        //      System.out.println(ii.getTitle() + ii.getAuthor());
        //    }
        request.setAttribute("infor", searchTitle);
        return "healthInformation";
    }


}
