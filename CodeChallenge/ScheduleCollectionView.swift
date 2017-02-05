//
//  ScheduleCollectionView.swift
//  CodeChallenge
//
//  Created by Brandon Aubrey on 2/2/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

extension ScheduleVC : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        for cell in collectionView.visibleCells {
            cell.backgroundColor = UIColor.white
        }
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.gray
        if collectionView == self.monthCollectionView {
            day = String(Int(indexPath.row) + 1)
            
            if (hour != nil){
                reserveButton.isEnabled = true
            }
        }
            
        else {
            hour = hourArray[indexPath.row]
            
            if (day != nil){
                reserveButton.isEnabled = true
            }
        }
    }
}

extension ScheduleVC : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.monthCollectionView {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCell
            cellA.dayLabel.text = String(indexPath.row+1)
            
            return cellA
        }
            
        else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "hourCell", for: indexPath) as! HourCell
            cellB.hourLabel.text = hourArray[indexPath.row]
            
            return cellB
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.monthCollectionView {
            return 31
        }
            else {
        return hourArray.count
        }
    }
    
}
