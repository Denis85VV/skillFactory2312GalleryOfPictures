//
//  Cell.swift
//  Gallery of Pictures
//
//  Created by Denis on 13.01.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
  @IBOutlet weak var ballImage: UIImageView!
  @IBOutlet weak var smileImage: UIImageView!
  
  func setBallImage(ballName: String){
    ballImage.image = UIImage(named: ballName)
  }
  
  func setSmileImage(smileName: String){
    smileImage.image = UIImage(named: smileName)
  }
  
}
