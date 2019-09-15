//
//  ViewController.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        logData(.info, category: .viewCycle)
    }


}

