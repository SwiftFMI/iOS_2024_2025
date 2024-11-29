//
//  ExpandedView.swift
//  AnimationApp
//
//  Created by Emil Atanasov on 11/18/24.
//

import SwiftUI

struct ExpandedView: View {
    var animationNS: Namespace.ID
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .matchedGeometryEffect(id: "card", in: animationNS)
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Text("Buy")
                }
                .matchedGeometryEffect(id: "button", in: animationNS)
            }
            
            Text("Some text goes here Some text goes here Some text goes here Some text goes here")
            Spacer()
            
        }
        
    }
}

//#Preview {
//    ExpandedView(animationNS: <#Namespace.ID#>)
//}
