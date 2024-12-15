//
//  LoginUserView.swift
//  FirebaseApp
//
//  Created by Emil Atanasov on 12/13/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage
import FirebaseAuth

import PhotosUI

struct LoginUserView: View {
    @ObservedObject var viewModel = FirestoreViewModel()
    @State var username = "peter@gmail.com"
    @State var password = "123456"
    @State var disableLogin = false
    @State var userId = ""
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?

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
                        disableLogin = true
                        Auth.auth().signIn(withEmail: username, password: password) { authResult, error in
                            guard let authResult else {
                                return
                            }
                            Task {
                                let uid = authResult.user.uid
                                viewModel.connect()
                                await viewModel.fetchUserInfo(byId: uid)
                                userId = uid
                                
                            }
                        }
                    }
                } label: {
                    Text("Login!")
                }
                .disabled(disableLogin)
                if !userId.isEmpty {
                    PhotosPicker("Select avatar", selection: $avatarItem, matching: .images)
                    Button {
                        Task {
                            viewModel.connectStorage()
                            if let loaded = try? await avatarItem?.loadTransferable(type: Data.self) {
                                viewModel.uploadFile(userId: userId, data: loaded)
                            } else {
                                print("Failed")
                            }
                        }
                        
                        
                    } label: {
                        Text("Upload!")
                    }
                }

            }
            
        }
    }
}
