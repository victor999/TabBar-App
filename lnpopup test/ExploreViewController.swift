//
//  ViewController.swift
//  lnpopup test
//
//  Created by Victor Serov on 19/09/2022.
//

import UIKit
import LNPopupController

class ExploreViewController: UIViewController {
    
    var label = UILabel()
    var selectButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Explore"
        label.frame = CGRect(x: 10.0, y: 100.0, width: 150.0, height: 20.0)
        view.addSubview(label)
        
        selectButton.frame = CGRect(x: 10.0, y: 150.0, width: 150.0, height: 20.0)
        selectButton.addTarget(self, action: #selector(self.clickedSelect(_:)), for: .touchUpInside)
        selectButton.setTitle("Press me", for: .normal)
        selectButton.setTitleColor(.blue, for: .normal)
        view.addSubview(selectButton)
    }
    
    @objc func clickedSelect(_ sender:UIButton)
    {
        let demoVC = PopupViewController()
        demoVC.view.backgroundColor = .red
        demoVC.popupItem.title = "Hello World"
        demoVC.popupItem.subtitle = "And a subtitle!"
        demoVC.popupItem.progress = 0.34
            
        tabBarController?.presentPopupBar(withContentViewController: demoVC, animated: true, completion: nil)
    }


}

