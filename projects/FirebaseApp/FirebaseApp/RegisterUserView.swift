//
//  RegisterUserView.swift
//  FirebaseApp
//
//  Created by Emil Atanasov on 12/13/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct RegisterUserView: View {
    @State var username = ""
    @State var password = ""
    @State var disableRegistration = false

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Username:")
                    TextField("email@gmail.com", text: $username)
                }
                HStack {
                    Text("Password:")
                    SecureField("password", text: $password)
                }
                
                Button {
                    if !username.isEmpty && !password.isEmpty {
                        disableRegistration = true
                        Auth.auth().createUser(withEmail: username, password: password) { authResult, error in
                            // ...
                            print("Auth result =", authResult)
                        }
                    }
                } label: {
                    Text("Register!")
                }
                .disabled(disableRegistration)

            }
            
        }
    }
}

#Preview {
    RegisterUserView()
}
