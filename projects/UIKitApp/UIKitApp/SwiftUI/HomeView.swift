//
//  HomeView.swift
//  UIKitApp
//
//  Created by Emil Atanasov on 12/09/24.
//

import SwiftUI

struct HomeView: View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Username:")
                    TextField(text: $username) {
                        Text("your@email.com")
                    }
                }
                HStack {
                    Text("Password:")
                    SecureField(text: $password) {
                        Text("password")
                    }
                    
                }
                Button {
                    print("Try to login!")
                } label: {
                    Text("Login")
                }
                WebView(url: URL(string: "http://google.com")!)
                    .frame(width: 500, height: 500)
                
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
