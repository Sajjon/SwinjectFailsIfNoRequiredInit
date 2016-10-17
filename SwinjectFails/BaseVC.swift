//
//  ViewController.swift
//  SwinjectFails
//
//  Created by Alexander Cyon on 2016-10-17.
//  Copyright © 2016 Alexander Cyon. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

