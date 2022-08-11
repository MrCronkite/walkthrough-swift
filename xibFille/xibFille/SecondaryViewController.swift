//
//  SecondaryViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    var text: String = ""

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textLabel.text = text
    }
    
    

}
