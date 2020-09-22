package com.lisanbian.service;

import com.lisanbian.pojo.FirstPage;
import com.lisanbian.pojo.User;

import java.util.List;

public interface UserService {
    //用户注册
    void registUser(User user);
    
    //查询个人信息
    User queryUserInformation(String username);
    
    //用户登录
    User longin(User user);
    
    //first页面数据
    List<FirstPage> findAll();
    
    //更新用户信息
    User updateUser(User user);

    //注销用户信息
    void deleteUser(String username);

    //忘记密码,找回密码
    User selectPassword(User user);

    //修改密码
    User updatePassword(User user);
    


}
