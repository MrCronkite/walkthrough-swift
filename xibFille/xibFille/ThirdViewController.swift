//
//  ThirdViewController.swift
//  xibFille
//
//  Created by admin1 on 12.08.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myLabel.text = name
    }
    @IBAction func buttonAction(_ sender: Any) {
        let secondvyVC = SecondaryViewController(text: "vladik", nibName: "SecondaryViewController", bundle: nil)
        show(secondvyVC, sender: nil)
    }
    
}
