//
//  ViewController.swift
//  CodeChallenge
//
//  Created by Brandon Aubrey on 2/1/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    //MARK: actions
    
    @IBAction func addAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "SpaService", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "navController")
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

