//
//  DebugAppApp.swift
//  DebugApp
//
//  Created by Emil Atanasov on 10/25/24.
//

import SwiftUI

@main
struct DebugAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(LazyViewModel())
//            LazyView(vm: LazyViewModel())
        }
    }
}
