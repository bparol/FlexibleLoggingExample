//
//  LeftViewController.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logData(.info, category: .viewCycle)
    }
}
