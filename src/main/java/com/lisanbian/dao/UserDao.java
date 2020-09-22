package com.lisanbian.dao;

import com.lisanbian.pojo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    /**
     * 保存用户信息
     */
    @Insert("insert into user(username,password,phone,email,idCard,address) values(#{username},#{password},#{phone},#{email},#{idCard},#{address})")
    void saveUser(User user);

    /**
     * 查询个人信息
     */
    @Select("select * from user where username = #{username}")
    User findUser(String username);

    /**
     * 修改用户信息
     */
    @Update("update user set phone=#{phone},email=#{email},idCard=#{idCard},address=#{address} where username=#{username}")
    User updateUser(User user);

    /**
     * 删除用户信息
     */
    @Delete("delete u.*,s.* from user u left join sportinfo s on s.name=u.username where username=#{username}")
    void deleteUser(String username);

    /**
     * 根据用户名和密码查询用户
     */
    @Select("select * from user where username = #{username} and password = #{password}")
    User queryByNameAndPassword(User user);

    /**
     *查找密码
     */
    @Select("select password from user where username = #{username} and phone = #{phone}")
    User selectPassword(User user);

    /**
     * 修改密码
     */
    @Update("update user set password = #{password}")
    User updatePassword(User user);

}
