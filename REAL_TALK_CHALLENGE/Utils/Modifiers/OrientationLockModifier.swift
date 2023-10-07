//
//  OrientationLockModifier.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

struct OrientationLockModifier: ViewModifier {
    let lockOrientation: UIInterfaceOrientationMask
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                AppDelegate.orientationLock = lockOrientation
            }
            .onDisappear {
                AppDelegate.orientationLock = .all // allows full Rotating functionality
            }
    }
}
