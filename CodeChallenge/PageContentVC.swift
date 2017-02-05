//
//  PageContentVC.swift
//  CodeChallenge
//
//  Created by Brandon on 2/2/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

class PageContentVC: UIViewController{
    
    //MARK: variables and connections

    var pageIndex:      Int = 0
    var strPhotoName:   String!
    var tableViewArray = ["Swedish Massage", "Deep Tissue Massage", "Hot Stone Massage", "Reflexology", "Trigger Point Therapy"]
    
    @IBOutlet weak var pageIndicator:   UIPageControl!
    @IBOutlet weak var imageView:       UIImageView!
    @IBOutlet weak var tableView:       UITableView!
    @IBOutlet weak var reserveButton:   UIButton!
    
    //MARK: ViewCycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        tableView.round()
        reserveButton.round()
        
        reserveButton.isEnabled = (pageIndex == 1) ? true : false
        
        imageView.image = UIImage(named:strPhotoName)
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
        pageIndicator.currentPage = pageIndex
    }
    
    //MARK: Actions
    @IBAction func reserveButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Schedule", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ScheduleViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}



