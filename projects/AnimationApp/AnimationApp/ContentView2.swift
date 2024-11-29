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
//            if isBig {
//                Button {
////                    withAnimation {
//                        isBig.toggle()
////                    }
//                } label: {
//                    Text(isBig ? "Big" : "Small")
//                    .frame(width: currentWidth, height: currentHeight)
//                }
//                .buttonStyle(.bordered)
//            } else {
//                Button {
////                    withAnimation {
//                        isBig.toggle()
////                    }
//                } label: {
//                    Text(isBig ? "Big" : "Small")
//                    .frame(width: currentWidth, height: currentHeight)
//                }
//                .buttonStyle(.bordered)
//            }
            GeometryReader { geometry in
                Rectangle()
                    .fill(c)
                    .border(Color.yellow, width: 10)
                    .frame(width: 100, height: 100)
                    .offset(CGSize(width: offsetX, height: y))
                    .animation(.easeInOut(duration: 3.0), value: offsetX)
                    .onTapGesture {
                        withAnimation(Animation.spring(duration: 2.0, bounce: 0.02)) {
                            let size = geometry.size
                            let rndX = randomNumber() / 10.0
                            let rndY = randomNumber() / 10.0
                            let newColor = Color(cgColor: CGColor(red: rndX, green: rndY, blue: rndX, alpha: 1))
                            x = CGFloat(rndX * size.width - 100)
                            y = CGFloat(rndY * size.height - 100)
                            c = newColor
                        } completion: {
                            print("Animation has finished!")
                        }
                    }
            }
        }
    }
    
    var offsetX: CGFloat {
        x
    }
    
    var currentWidth: CGFloat {
        isBig ? 400 : 200
    }
    var currentHeight: CGFloat {
        isBig ? 100 : 50
    }
}

#Preview {
    ContentView2()
}
