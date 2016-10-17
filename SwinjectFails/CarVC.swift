//
//  CarVC.swift
//  SwinjectFails
//
//  Created by Alexander Cyon on 2016-10-17.
//  Copyright © 2016 Alexander Cyon. All rights reserved.
//

import UIKit

class CarVC: BaseVC {
    
    let manifacturer: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Car manifacturer: '\(manifacturer)'")
    }
    
    init(manifacturer: String) {
        self.manifacturer = manifacturer
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
