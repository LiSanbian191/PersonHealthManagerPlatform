package com.lisanbian.service.impl;

import com.lisanbian.service.HealthToolService;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;

@Service
public class HealthToolServiceImpl implements HealthToolService {

    /*计算BMI的值*/
    public double CalculationBMI(double height, double weight) {
        /*保留两位小数*/
        DecimalFormat df = new DecimalFormat(".00");
        double rr = weight / (height * height);
        /*将String类型转成double*/
        double re = Double.parseDouble(df.format(rr));
        return re;
    }

    /*计算理想体重（DBW）的值*/
    public double CalculationDBW(double height, double weight) {
        /*保留两位小数*/
        DecimalFormat df = new DecimalFormat(".00");
        double re1 = 22 * (height / 100) * (height / 100);
        double re = Double.parseDouble(df.format(re1));
        return re;
    }

    /*判断体重是什么类型*/
    public int judgeWeight(double weight, double min, double max) {
        if (weight < min) {
            return 1;
        } else if (weight > max) {
            return 2;
        } else {
            return 3;
        }
    }

    /*每日能量需求（DEN）计算*/
    public double judgeDEN(double h, double w, double a, double s) {
        /*0代表男，1代表女*/
        if (s == 0.0) {
            double result = 66 + 13.7 * w + 5 * h - 6.8 * a;
            return result;
        } else {
            double result = 655 + 9.5 * w + 1.8 * h - 4.7 * a;
            return result;
        }
    }

    /*腰臀比（WHR）计算*/
    public double judgeWHR(double waist, double hip) {
        return waist / hip;
    }


}
