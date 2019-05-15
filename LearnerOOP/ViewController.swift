//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Ricky Effendi on 15/05/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    @IBOutlet weak var learnerNameLabel: UILabel!
    
    var learnerInstance: LearnerModel?
    var facilitatorInstance: FacillitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Ricky", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        facilitatorInstance = FacillitatorModel(facilName: "Henry", facilAge: 40, facilGender: "Male", facilProfile: "", facilPerk: "Marketing")
        
        updateUI()
        
    }
    
    func updateUI() {
        if let instance = facilitatorInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        } else {
            learnerNameLabel.text = ""
            learnerAgeLabel.text = ""
            learnerGenderLabel.text = ""
        }
    }
    
    @IBAction func btnAgePress(_ sender: Any) {
        if let instance = facilitatorInstance {
            instance.increaseAge()
        }
        updateUI()
    }
    
}

