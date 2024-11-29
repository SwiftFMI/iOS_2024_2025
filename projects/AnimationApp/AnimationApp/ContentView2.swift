//
//  ContentView.swift
//  AnimationApp
//
//  Created by Emil Atanasov on 11/18/24.
//

import SwiftUI

struct ContentView2: View {
    
    @State var isBig = false
    @State var x: CGFloat = 0
    @State var y: CGFloat = 0
    @State var c = Color.blue
    @Namespace var namespace
    
    var body: some View {
        
        VStack {
            if isBig {
                ExpandedView(animationNS: namespace)
            } else {
                CompactView(animationNS: namespace)
            }
            Button {
                withAnimation(.easeInOut(duration: 3.0)) {
                    isBig.toggle()
                }
            } label: {
                Text("Toggle")
            }
            

        }
    }
    
    
}

#Preview {
    ContentView2()
}
