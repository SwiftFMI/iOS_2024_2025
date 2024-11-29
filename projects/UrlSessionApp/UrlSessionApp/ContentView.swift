//
//  ContentView.swift
//  UrlSessionApp
//
//  Created by Emil Atanasov on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var responseRaw = ""
    var body: some View {
        VStack {
            ScrollView {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(responseRaw)
            }
        }
        .padding()
        .task {
            
            do {
                guard let url = URL(string: "https://dummyjson.com/users") else {
                    print("Invalid address!")
                    return
                }
                responseRaw = "Loading..."
                var request = URLRequest(url: url)
                request.httpMethod = "GET"
                let (data, response) = try await URLSession.shared.data(for: request)
                responseRaw = String(data: data, encoding: .utf8) ?? "Unable to decode"
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    ContentView()
}
