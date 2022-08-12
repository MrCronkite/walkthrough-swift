//
//  ViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

protocol ViewControllerDelegate {
    func update(text: String)
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    var text: String = ""
    let labelText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    func update(text: String) {
        labelText.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
        labelText.textColor = .red
        labelText.text = text
        self.view.addSubview(labelText)
        
    }
    
    @IBAction func getVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc2 = storyboard.instantiateViewController(identifier: "ThirdView") as? ThirdViewController else { return }
            vc2.name = myTextField.text!
            show(vc2, sender: nil)
     }

    
}


