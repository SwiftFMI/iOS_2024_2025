//
//  FirebaseAppApp.swift
//  FirebaseApp
//
//  Created by Emil Atanasov on 12/06/24.
//

import SwiftUI
import UIKit

@main
struct FirebaseAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            RegisterUserView()
            LoginUserView()
        }
    }
}
