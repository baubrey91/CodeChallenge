//
//  ViewController.swift
//  CodeChallenge
//
//  Created by Brandon Aubrey on 2/1/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import UIKit

var reservationArray = [Reservation(date: "Monday, March 26, 2016", time: "2:00 PM", type: "Gel Manicure", partySize: 1, length: 30, description: "Get the upper hand with our chip-resistant, morror-finish gel polish that requires no drying time and last up to two weeks.")]
class HomeVC: UIViewController {
    
    //MARK: variables

    //MARK: actions
    @IBAction func addAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "SpaService", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "navController")
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

