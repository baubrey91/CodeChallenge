//
//  ScheduleVC.swift
//  CodeChallenge
//
//  Created by Brandon on 2/2/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

class ScheduleVC : UIViewController {
    
    @IBOutlet weak var monthLabel: UILabel!
    var monthArray = ["January","February","March","April","May","June","July","August","Sepetember","October","November","December"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        getMonth()
        self.title = "SCHEDULE"
        self.navigationController?.navigationBar.topItem?.title = ""
    }
    
    func getMonth() {
        
        let date = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        monthLabel.text = monthArray[month-1]
        
    }
}
