//
//  ViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTapt() {
        let vc = SecondaryViewController(nibName: "SecondaryViewController", bundle: nil)
        vc.text = "Наш новый текст"
        navigationController?.pushViewController(vc, animated: true)
        print("hello")
    }
    
}

