//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Emil Atanasov on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Swift!")
            Text("Hello, Swift!")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image(systemName: "truck.box.fill")
                .foregroundColor(Color.orange)
                .frame(width: 200, height: 200)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
