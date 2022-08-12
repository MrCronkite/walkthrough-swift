//
//  SecondaryViewController.swift
//  xibFille
//
//  Created by admin1 on 11.08.22.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    var delegate: ViewControllerDelegate?
    
    var text: String
    var buttonData = UIButton()
    
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
        
        buttonData.frame = CGRect(x: 100, y: 50, width: 100, height: 40)
        buttonData.setTitle("Click", for: .normal)
        buttonData.setTitleColor(.green, for: .normal)
        buttonData.layer.cornerRadius = 20
        buttonData.backgroundColor = .blue
        buttonData.addTarget(self, action: #selector(sendText), for: .touchUpInside)
        self.view.addSubview(buttonData)
        
        
        textLabel.text = text
    }
    
    @objc func sendText(sender: UIButton){
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let vc1 = storyboardMain.instantiateViewController(identifier: "VC1") as? ViewController else {return}
        show(vc1, sender: nil)
        delegate?.update(text: "delegate")
    }
    
    

}
