//
//  SecondViewController.swift
//  lnpopup test
//
//  Created by Victor Serov on 20/09/2022.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "Favorites"
        label.frame = CGRect(x: 10.0, y: 100.0, width: 150.0, height: 20.0)
        view.addSubview(label)
    }
}
