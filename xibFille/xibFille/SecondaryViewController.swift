//
//  SecondaryViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    var text: String
    
    @IBOutlet weak var textLabel: UILabel!
    
    init(text: String, nibName: String?, bundle: Bundle?){
        self.text = text
        super.init(nibName: nibName, bundle: bundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("ffff")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textLabel.text = text
    }
    
    

}
