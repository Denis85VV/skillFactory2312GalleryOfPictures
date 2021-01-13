//
//  ShowImageVC.swift
//  Gallery of Pictures
//
//  Created by Denis on 13.01.2021.
//

import UIKit

class ShowImageVC: UIViewController {

  @IBOutlet weak var currentImage: UIImageView!
  var imageName: String!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    currentImage.image = UIImage(named: imageName)
    
    }
  
  func setImageName(name: String){
    imageName = name
  }

}
