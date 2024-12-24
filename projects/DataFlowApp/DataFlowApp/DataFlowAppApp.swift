//
//  DataFlowAppApp.swift
//  DataFlowApp
//
//  Created by Emil Atanasov on 12/20/24.
//

import SwiftUI

@main
struct DataFlowAppApp: App {
    @ObservedObject var myVM = ContentViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(myVM)
        }
    }
}
