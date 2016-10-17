//
//  AppDelegate.swift
//  SwinjectFails
//
//  Created by Alexander Cyon on 2016-10-17.
//  Copyright © 2016 Alexander Cyon. All rights reserved.
//

import UIKit
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var container: Swinject.Container!
    
    class var shared: AppDelegate {
        //swiftlint:disable force_cast
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        container = Container() {
            c in
            
            c.register(AudiVC.self) {
                r, manifacturer in
                AudiVC(manifacturer: manifacturer)
            }
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
        
        guard let rootVC = container.resolve(AudiVC.self, argument: "Audi") else {
            print("Failed to resolve 'AudiVC', you probably forgot to implement required init(decoder)")
            return true
        }
        window?.rootViewController = UINavigationController(rootViewController: rootVC)
        
        return true
    }
    
    

}

