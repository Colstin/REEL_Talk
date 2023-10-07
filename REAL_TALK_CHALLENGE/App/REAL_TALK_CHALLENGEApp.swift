//
//  REAL_TALK_CHALLENGEApp.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/6/23.
//

import SwiftUI

@main
struct REAL_TALK_CHALLENGEApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.all //By default all views rotate freely
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
    
    //Fire Base Configuration
}
