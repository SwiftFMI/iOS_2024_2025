//
//  ContentView.swift
//  NavigationStackApp
//
//  Created by Emil Atanasov on 11/08/24.
//

import SwiftUI

protocol MyScreen: Equatable, Hashable {
    
}

enum Screen: String, MyScreen {
    case details
    case help
}

//extension Screen {
//    
//}
//
//enum Settings: String, MyScreen {
//    case app
//    case profile
//}

struct ContentView: View {
    @State var path: [Screen] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
//                NavigationLink {
//                    DetailsView()
//                } label: {
//                    Text("Hi!")
//                }
                
                Button {
                    path = [Screen.help, Screen.details, Screen.help, Screen.details, Screen.help, Screen.details, Screen.help, Screen.details ]
                } label: {
                    Text("show help.details")
                }

                
                NavigationLink(value: Screen.help) {
                    Text("With Value")
                }
                
                NavigationLink("With Value", value: Screen.details)
                
                
//                NavigationLink(value: Settings.app) {
//                    Label("Settings", systemImage: "gear")
//                }
            }
            .navigationDestination(for: Screen.self, destination: { screen in
                if screen == .details {
                    DetailsView()
                } else {
                    HelpView()
                }
            })
//            .navigationDestination(for: Settings.self, destination: { settings in
//                if settings == .app {
//                    HelpView()
//                } else {
//                    EmptyView()
//                }
//            })
            .toolbar {
                ToolbarItem {
                    Image(systemName: "plus.circle")
                }
            }
            .navigationTitle("Hello")
        }
//        .onChange(of: path) { oldValue, newValue in
//            print("New value = \(path)")
//        }
    }
    
}

#Preview {
    ContentView()
}
