package com.lisanbian.service.impl;

import com.lisanbian.dao.HealthInformationDao;
import com.lisanbian.pojo.HealthInformation;
import com.lisanbian.service.HealthInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HealthInformationServiceImpl implements HealthInformationService {
    @Autowired
    private HealthInformationDao informationDao;

    @Override
    public List<HealthInformation> findAllInfor() {

        return informationDao.findAllInformation();
    }

    @Override
    public List<HealthInformation> findByTitle(String title) {
        return informationDao.findInforDet(title);
    }

    @Override
    public List<HealthInformation> findBySimilar(String title) {
        return informationDao.searchTitle(title);
    }
}
