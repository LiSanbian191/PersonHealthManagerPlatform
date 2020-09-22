package com.lisanbian.dao;

import com.lisanbian.pojo.FirstPage;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface FirstPageDao {
    @Select("select * from first_page")
    List<FirstPage> findAll();
}
