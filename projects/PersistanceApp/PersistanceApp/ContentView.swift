//
//  ContentView.swift
//  PersistanceApp
//
//  Created by Emil Atanasov on 12/02/24.
//

import SwiftUI
import DebugSwift
import KeychainStored

struct ContentView: View {
    init() {
        DebugSwift.setup()
        DebugSwift.show()
    }
    
    @AppStorage("my.app.version") var version: String?
    @StateObject var vm = ContentViewModel()
    @State var newVersion = ""
    var body: some View {
        VStack {
            Button {
                if let version {
                    print(version)
                }
                
                if let secureData = vm.getSecure() {
                    print("Secure: \(secureData)")
                }
            } label: {
                Text("Check version")
            }
            Text("Version = \(version ?? "")")
            
            TextField("version", text: $newVersion)
            Button {
                version = newVersion
                vm.setSecure(str: newVersion)
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
