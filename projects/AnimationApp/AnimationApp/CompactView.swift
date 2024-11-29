//
//  CompactView.swift
//  AnimationApp
//
//  Created by Emil Atanasov on 11/18/24.
//

import SwiftUI

struct CompactView: View {
    var animationNS: Namespace.ID
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 50)
                .matchedGeometryEffect(id: "card", in: animationNS)
            Button("test") {
                
            }.matchedGeometryEffect(id: "button", in: animationNS)
        }
        
    }
}

//#Preview {
//    CompactView()
//}
