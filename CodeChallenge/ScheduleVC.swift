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
    
    //MARK: variables
    @IBOutlet weak var monthLabel:          UILabel!
    @IBOutlet weak var monthCollectionView: UICollectionView!
    @IBOutlet weak var timeCollectionView:  UICollectionView!
    @IBOutlet weak var reserveButton:       UIButton!
    
    var monthArray = ["January", "February", "March", "April", "May", "June", "July", "August", "Sepetember", "October", "November", "December"]
    var hourArray = ["9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM", "8:00 PM"]
    var day: String?
    var hour: String?
    
    //MARK: Actions
    @IBAction func reserveButton(_ sender: Any) {
        
        let reservation = Reservation(date: "\(monthLabel.text!) \(day!)", time: hour!, type: "Hot Stone Massage", partySize: 1, length: 1, description: "Massage to focus on the deepest layer of muscles to target knots and release chronis muscle tension.")
        reservationArray.append(reservation)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "homeVC")
        self.present(vc, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        getMonth()
        self.title = "SCHEDULE"
        self.navigationController?.navigationBar.topItem?.title = ""
        reserveButton.isEnabled = false

    }
    
    func getMonth() {
        
        let date = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        monthLabel.text = monthArray[month-1]
        
    }
    
    
}
