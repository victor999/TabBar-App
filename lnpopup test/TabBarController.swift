//
//  TabBarController.swift
//  lnpopup test
//
//  Created by Victor Serov on 20/09/2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .systemBlue
        setupVCs()
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ExploreViewController(), title: "Explore", image: UIImage(systemName: "globe")!),
            createNavController(for: FavoritesViewController(), title: NSLocalizedString("Favorites", comment: ""), image: UIImage(systemName: "star.fill")!)
        ]
    }
    
    fileprivate func createNavController(for rootViewController:   UIViewController,
        title: String,
        image: UIImage) -> UIViewController
    {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.badgeColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1.0)
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = false
        navController.isNavigationBarHidden = true
        
        rootViewController.navigationItem.title = ""
        
        return navController
    }
}
