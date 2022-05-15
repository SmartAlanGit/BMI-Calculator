//
//  CalculateBrain.swift
//  Calculator BMI
//
//  Created by Диас Жанкелдиев on 15.05.2022.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    let colorOne = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    let colorTwo = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    let colorThree = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func CalculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        
        if bmiValue < 18.5 {
            print("UnderWeight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: colorOne)
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: colorTwo)
        } else if bmiValue > 24.9 {
            print("OverWeight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: colorThree)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}

