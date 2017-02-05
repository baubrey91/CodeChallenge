//
//  HomeCollectionView.swift
//  CodeChallenge
//
//  Created by Brandon on 2/3/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import UIKit

extension HomeVC : UICollectionViewDelegate {
    
}

extension HomeVC : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reservationCell", for: indexPath) as! ReservationCell
        cell.timeLabel.text = reservationArray[indexPath.row].time
        cell.dayLabel.text = reservationArray[indexPath.row].date
        cell.titleLabel.text = reservationArray[indexPath.row].type
        cell.durationLabel .text = "\(reservationArray[indexPath.row].length)M"
        cell.sizeLabel .text = "PARTY SIZE - \(reservationArray[indexPath.row].partySize)"
        cell.descriptionBox.text = reservationArray[indexPath.row].description
        cell.rescheduleButton.round()
        cell.cancelButton.round()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return reservationArray.count
    }
    
}
