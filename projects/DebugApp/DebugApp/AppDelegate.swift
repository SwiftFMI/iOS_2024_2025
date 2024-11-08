//
//  AppDelegate.swift
//  DebugApp
//
//  Created by Emil Atanasov on 10/25/24.
//

import SwiftUI
import DebugSwift

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _: UIApplication,
        didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        DebugSwift.setup()
//        DebugSwift.show()

        return true
    }
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        
        if motion == .motionShake {
            DebugSwift.toggle()
        }
    }
}
