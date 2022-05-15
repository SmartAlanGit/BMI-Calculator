//
//  ViewController.swift
//  Calculator BMI
//
//  Created by Диас Жанкелдиев on 15.05.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var calculateYourBMIlabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    var calculateBrain = CalculatorBrain()
    
    @IBAction func heightSliderAction(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        weightLabel.text = String(format: "%.f", sender.value) + "kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let heightslide = heightSlider.value
        let weightslide = weightSlider.value
        let bmi = weightslide / powf(heightslide, 2)
        
        bmiValue = String(format: "%.1f", bmi)
        
        calculateBrain.CalculateBMI(height: heightslide, weight: weightslide)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }


}

