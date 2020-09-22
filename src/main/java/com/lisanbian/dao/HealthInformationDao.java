package com.lisanbian.dao;

import com.lisanbian.pojo.HealthInformation;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface HealthInformationDao {
    /*所有的健康百科内容*/
    @Select("select * from healthy_information")
    List<HealthInformation> findAllInformation();

    /*详细的文章*/
    @Select("select title,author,article from healthy_information where title=#{title}")
    List<HealthInformation> findInforDet(String title);

    /*模糊查询文章*/
    @Select("select * from healthy_information where title like CONCAT(CONCAT('%', #{title}), '%')")
    List<HealthInformation> searchTitle(String title);


}
