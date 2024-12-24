//
//  ContentView.swift
//  DataFlowApp
//
//  Created by Emil Atanasov on 12/20/24.
//

import SwiftUI

// със viewmodel
struct ContentView: View {
//    @ObservedObject var vm = ContentViewModel()
    @EnvironmentObject var vm: ContentViewModel
    
    var body: some View {
        VStack {
            Text(vm.text)
            TextField("input", text: Binding(get: {
                vm.text
            }, set: { newValue in
                vm.update(text: newValue)
            }))
            Button {
//                vm.text = "Hi!"
                vm.update(text: "Hi!")
            } label: {
                Text("Update!")
            }
        }
        .padding()
    }
}

class ContentViewModel: ObservableObject {
    @Published private(set) var text = "Hello, SwiftUI!"
    
    func update(text: String) {
        self.text = text
    }
}

// със стандартен state
struct ContentView2: View {
    @State var text = "Hello, SwiftUI!"
    
    var body: some View {
        VStack {
            Text(text)
            TextField("input", text: Binding(get: {
                text
            }, set: { newText in
                text = newText
            }))
            Button {
                text = "Hi!"
            } label: {
                Text("Update!")
            }
        }
        .padding()
    }
}

#Preview("Моят изглед") {
    ContentView()
        .environmentObject(ContentViewModel())
}
