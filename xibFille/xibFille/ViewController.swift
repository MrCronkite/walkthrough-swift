//
//  ViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    //var text: String = ""
    let labelText: UILabel

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelText.frame.
    }
    
    @IBAction func getVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc2 = storyboard.instantiateViewController(identifier: "ThirdView") as? ThirdViewController else { return }
            vc2.name = myTextField.text!
            show(vc2, sender: nil)
     }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let vc = segue.destination as? ThirdViewController {
//            vc.name = "Hello vlad"
//        }
//    }
    
    
}


