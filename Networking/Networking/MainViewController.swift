//
//  MainViewController.swift
//  Networking
//
//  Created by Alexey Efimov on 21/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

enum UserActons: String, CaseIterable {
    case downloadImage = "Download Image"
    case exampleOne = "Example One"
    case exampleTwo = "Example Two"
    case exampleThree = "Example Three"
    case exampleFour = "Example Four"
    case ourCourses = "Our Courses"
}

class MainViewController: UICollectionViewController {
    
    private let userActions = UserActons.allCases

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userActions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! UserActionCell
    
        cell.userActionLabel.text = userActions[indexPath.item].rawValue
    
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let userAction = userActions[indexPath.item]
        
        switch userAction {
        case .downloadImage:
            performSegue(withIdentifier: "ShowImage", sender: self)
        case .exampleOne:
            performSegue(withIdentifier: "ExampleOne", sender: self)
        case .exampleTwo:
            performSegue(withIdentifier: "ExampleTwo", sender: self)
        case .exampleThree:
            performSegue(withIdentifier: "ExampleThree", sender: self)
        case .exampleFour:
            performSegue(withIdentifier: "ExampleFour", sender: self)
        case .ourCourses:
            performSegue(withIdentifier: "OurCourses", sender: self)
        }
    }
    
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "ShowImage" {
            let coursesVC = segue.destination as! CoursesViewController
            
            switch segue.identifier {
            case "ExampleOne":
                coursesVC.fetchDataV1()
            case "ExampleTwo":
                coursesVC.fetchDataV2()
            case "ExampleThree":
                coursesVC.fetchDataV3()
            case "ExampleFour":
                coursesVC.fetchDataV4()
            case "OurCourses":
                coursesVC.fetchData()
            default: break
            }
        }
     }

}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 48, height: 100)
    }
}
