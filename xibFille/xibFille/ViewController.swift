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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getVC(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let vc2 = storyboard.instantiateViewController(identifier: "ThirdView") as? ViewController {
//            //vc2.name = myTextField.text!
//            show(vc2, sender: nil)
//        }
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdViewController {
            vc.name = "Hello vlad"
        }
            
    }
}


