//
//  PageController.swift
//  CodeChallenge
//
//  Created by Brandon on 2/2/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

class PageController: UIPageViewController{
    
    var imgArray = ["soapBackground.png","massageBackground.png","handsBackground.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SPA SERVICE"
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
    }
}

extension PageController : UIPageViewControllerDataSource {
    
    // here is funcionality for continious scroll these all set the next and previous image
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        
        let pageContent: PageContentVC = viewController as! PageContentVC
        var index = pageContent.pageIndex
        if (index == NSNotFound){
            return nil;
        }
        index += 1;
        if (index == imgArray.count){
            return getViewControllerAtIndex(index: 0)
        }
        return getViewControllerAtIndex(index: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        
        let pageContent: PageContentVC = viewController as! PageContentVC
        var index = pageContent.pageIndex
        if (index == NSNotFound){
            return nil
        }
        //continious
        if (index == 0){
            return getViewControllerAtIndex(index: imgArray.count - 1)
        }
        index -= 1;
        return getViewControllerAtIndex(index: index)
        
    }
    
    // MARK:- Other Methods
    func getViewControllerAtIndex(index: NSInteger) -> PageContentVC
    {
        // Create a new view controller and pass suitable data.
        let pageContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentVC
        
        pageContentViewController.strPhotoName = "\(imgArray[index])"
        pageContentViewController.pageIndex = index
        
        return pageContentViewController
    }
}
