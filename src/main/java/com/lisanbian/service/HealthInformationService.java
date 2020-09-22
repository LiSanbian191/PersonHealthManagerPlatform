package com.lisanbian.service;

import com.lisanbian.pojo.HealthInformation;

import java.util.List;

public interface HealthInformationService {
    /**
     * 查询所有
     */
    List<HealthInformation> findAllInfor();

    /**
     * 按标题精确查寻
     */
    List<HealthInformation> findByTitle(String title);

    /**
     * 模糊查询
     */
    List<HealthInformation> findBySimilar(String title);




}
