//
//  Helper.swift
//  CodeChallenge
//
//  Created by Brandon on 2/2/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import UIKit

extension UIView {
    
    func round() {
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
