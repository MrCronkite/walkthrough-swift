//
//  XibView.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class XibView: UIView {
    
    var text: String = "vlad"

    @IBOutlet weak var labelView: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func viewDidLoad() {
        self.viewDidLoad()
        
    
        labelView.text = text
    }
    
    
}
