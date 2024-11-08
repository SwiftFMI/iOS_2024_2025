//
//  DetailsView.swift
//  NavigationStackApp
//
//  Created by Emil Atanasov on 11/08/24.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.dismiss) var dismiss 
    
    init() {
        print("DetailsView.\(#function)")
        // start network request
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Display some details here!")
                NavigationLink("Help", value: Screen.help)
            }
            
            Button("Pop") {
                dismiss()
            }
        }
        .navigationTitle("Details view")
        .onAppear {
            
        }
    }
}

#Preview {
    DetailsView()
}
