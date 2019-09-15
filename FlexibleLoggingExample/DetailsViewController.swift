//
//  DetailsViewController.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 15/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logData(.info, category: .viewCycle)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        logData(.info, category: .viewCycle)
    }
    
    deinit {
        logData(.info, category: .memoryManagement)
    }
    
}
