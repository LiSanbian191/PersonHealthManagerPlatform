package com.lisanbian.service;

public interface HealthToolService {
    double CalculationBMI(double height, double weight);

    double CalculationDBW(double height, double weight);

    int judgeWeight(double weight, double min, double max);

    double judgeDEN(double h, double w, double a, double s);

    double judgeWHR(double waist, double hip);


}
