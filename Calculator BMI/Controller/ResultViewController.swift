//
//  ResultViewController.swift
//  Calculator BMI
//
//  Created by Диас Жанкелдиев on 15.05.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var assistentLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        assistentLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
