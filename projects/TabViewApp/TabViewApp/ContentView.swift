//
//  ContentView.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/11/24.
//

import SwiftUI

enum Tabs {
case received
    case sent
    case account
}

struct ContentView: View {
    
    @State var firstTabNotification: Int = 2
    @State var lastTabNotification: Text?
    @State var selectedTab = Tabs.received
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Tab("Received", systemImage: "tray.and.arrow.down.fill", value: .received) {
                NavigationStack {
                    VStack {
                        Image(systemName: "tray.and.arrow.down.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        NavigationLink {
                            VStack(spacing: 20) {
                                Image(systemName: "tray.and.arrow.down.fill")
                                    .imageScale(.large)
                                    .foregroundStyle(.tint)
                                
                                Button {
                                    firstTabNotification = 0
                                } label: {
                                    Text("Clear notification")
                                }
                                
                                Button {
                                    selectedTab = .account
                                } label: {
                                    Text("Select Account Tab")
                                }

                            }
                            .navigationTitle("Inner view")
                            .padding()
                        } label: {
                            Text("Open inner view")
                        }

                    }
                    .padding()
                    
                    
                    
                }
                
            }
            .badge(firstTabNotification)


            Tab("Sent", systemImage: "tray.and.arrow.up.fill", value: .sent) {
                VStack {
                    Image(systemName: "tray.and.arrow.up.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                }
                .padding()
                .onAppear {
                    lastTabNotification = Text("?")
                }
            }


            Tab("Account", systemImage: "person.crop.circle.fill", value: .account) {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                }
                .padding()
                .onAppear {
                    lastTabNotification = Text("?")
                }
            }
            .badge(lastTabNotification)
        }
        .tabViewStyle(.sidebarAdaptable)
        
    }
}

#Preview {
    ContentView()
}
