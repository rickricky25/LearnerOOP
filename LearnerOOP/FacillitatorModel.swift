//
//  FacillitatorModel.swift
//  LearnerOOP
//
//  Created by Ricky Effendi on 15/05/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import Foundation

class FacillitatorModel: LearnerModel {
    var perk: String = ""
    
    init(facilName: String, facilAge: Int, facilGender: String, facilProfile: String, facilPerk: String) {
        self.perk = facilPerk
        super.init(nameLearner: facilName, ageLearner: facilAge, genderLearner: facilGender, imageProfileLearner: facilProfile)
    }
    
    func coachMentee() {
        print("Coaching mentee...")
    }
}
