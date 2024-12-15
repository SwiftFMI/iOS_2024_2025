//
//  PersistanceAppApp.swift
//  PersistanceApp
//
//  Created by Emil Atanasov on 12/02/24.
//

import SwiftUI
import DebugSwift

@main
struct PersistanceAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
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
