//
//  MainTabBarController.swift
//  HomeCheck
//
//  Created by Roman on 04.09.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        let homeViewController = MainViewController()

        homeViewController.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"), tag: 0
        )

        let viewControllers = [homeViewController]
        self.viewControllers = viewControllers

    }


}
