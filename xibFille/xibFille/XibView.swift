//
//  XibView.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class XibView: UIView {

    @IBOutlet weak var labelView: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("TestView", owner: <#T##Any?#>, options: <#T##[UINib.OptionsKey : Any]?#>)
    }
    
    
    
}
