//
//  ViewController.swift
//  Gallery of Pictures
//
//  Created by Denis on 12.01.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
  @IBOutlet weak var collectionViewOne: UICollectionView!
  @IBOutlet weak var collectionViewTwo: UICollectionView!
  
  let arrayBalls = ["ball1","ball2","ball3","ball4","ball5","ball6","ball7","ball8","ball9"]
  let arraySmiles = ["poc1","poc2","poc3","poc4","poc5","poc6","poc7","poc8","poc9"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    collectionViewOne.delegate = self
    collectionViewOne.dataSource = self
    collectionViewTwo.delegate = self
    collectionViewTwo.dataSource = self
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else {
      return
    }
    var currentSelectedImage: String!
    
    if collectionView == collectionViewOne {
      currentSelectedImage = arrayBalls[indexPath.row]
    }
    if collectionView == collectionViewTwo {
      currentSelectedImage = arraySmiles[indexPath.row]
    }
    
    vc.setImageName(name: currentSelectedImage)
    present(vc, animated: true, completion: nil)
  }
  
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == collectionViewOne {
      return arrayBalls.count
    }
    if collectionView == collectionViewTwo {
      return arraySmiles.count
    }
    return 0
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == collectionViewOne {
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
        let imageName = arrayBalls[indexPath.row]
        cell.setBallImage(ballName: imageName)
        return cell
      }
    }
    if collectionView == collectionViewTwo {
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
        let imageName = arraySmiles[indexPath.row]
        cell.setSmileImage(smileName: imageName)
        return cell
      }
    }
    return UICollectionViewCell()
   }
}

