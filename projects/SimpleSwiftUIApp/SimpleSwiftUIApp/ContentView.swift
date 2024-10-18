//
//  ContentView.swift
//  SimpleSwiftUIApp
//
//  Created by Emil Atanasov on 10/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var index = 1
    let items: [String]
    let dimension: CGFloat = 50
    let emojiFont: Font
    init() {
        items =  ["🐶","🐻‍❄️","🐰"]
        emojiFont = .system(size: 30)
    }
    var body: some View {
        // VStack или HStack, смени и виж разликите
        HStack {
            ForEach(items, id: \.self) { item in
                Button {
                    print("Clicked: \(item) -> \(index)")
                    index += 1
                } label: {
                    Text(item)
                        .font(.system(size: 90))
                }
                
            }
            // Грид или мрежа
//            Grid {
//                GridRow {
//                    ForEach(items, id: \.self) { item in
//                            Text(item)
//                                .font(emojiFont)
//                    }
//                }
//                GridRow {
//                        ForEach(items, id: \.self) { item in
//                                Text(item)
//                                    .font(emojiFont)
//                        }
//                }
//                GridRow {
//                        ForEach(items, id: \.self) { item in
//                                Text(item)
//                                    .font(emojiFont)
//                        }
//                }
//            }
//            // спейсър, който заема празното място
//            Spacer()
//            Image(systemName: "paperplane")
//                .resizable()
//                .frame(width: dimension, height: dimension)
//            Spacer()
//            Image(systemName: "paperplane")
//                .resizable()
//                .frame(width: dimension, height: dimension)
//            Spacer()
//                .frame(width: 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
