package com.lisanbian.service.impl;

import com.lisanbian.dao.FirstPageDao;
import com.lisanbian.dao.UserDao;
import com.lisanbian.pojo.FirstPage;
import com.lisanbian.pojo.User;
import com.lisanbian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private FirstPageDao firstPageDao;

    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User queryUserInformation(String username) {
        return userDao.findUser(username);

    }

    @Override
    public User longin(User user) {
        return userDao.queryByNameAndPassword(user);

    }

    @Override
    public List<FirstPage> findAll() {
        return firstPageDao.findAll();
    }

    @Override
    public User updateUser(User user) {
       return userDao.updateUser(user);
    }

    @Override
    public void deleteUser(String username) {
        userDao.deleteUser(username);
    }

    @Override
    public User selectPassword(User user) {
        return userDao.selectPassword(user);
    }

    @Override
    public User updatePassword(User user) {
        return userDao.updatePassword(user);
    }
}
