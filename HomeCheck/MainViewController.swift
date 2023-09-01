//
//  ViewController.swift
//  HomeCheck
//
//  Created by Roman on 01.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    private let simpleButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        simpleButton.frame = CGRect(x: 50, y: 50, width: 150, height: 50)
        simpleButton.backgroundColor = .red
        view.addSubview(simpleButton)
        // Do any additional setup after loading the view.
    }


}

