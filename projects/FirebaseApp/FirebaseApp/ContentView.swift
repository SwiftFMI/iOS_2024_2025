//
//  ContentView.swift
//  FirebaseApp
//
//  Created by Emil Atanasov on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @ObservedObject var viewModel = FirestoreViewModel()
        VStack {
            Button {
                Task {
                    await viewModel.fetchData()
                }
            } label: {
                Text("Fetch!")
            }
            
            Button {
                Task {
                    await viewModel.observeData()
                }
            } label: {
                Text("Subscribe!")
            }
            
            Button {
                Task {
                    await viewModel.addRecord()
                }
            } label: {
                Text("Add!")
            }

            ForEach(viewModel.items) { item in
                Text(item)
            }
        }
        .padding()
        .task {
            viewModel.connect()
        }
    }
}

#Preview {
    ContentView()
}
