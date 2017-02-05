//
//  HomeCell.swift
//  CodeChallenge
//
//  Created by Brandon on 2/3/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

class ReservationCell : UICollectionViewCell {
 
    @IBOutlet weak var dayLabel:            UILabel!
    @IBOutlet weak var timeLabel:           UILabel!
    @IBOutlet weak var titleLabel:          UILabel!
    @IBOutlet weak var sizeLabel:           UILabel!
    @IBOutlet weak var durationLabel:       UILabel!
    @IBOutlet weak var descriptionBox
:         UITextView!
    @IBOutlet weak var rescheduleButton:    UIButton!
    @IBOutlet weak var cancelButton:        UIButton!
}
