//
//  LazyView.swift
//  DebugApp
//
//  Created by Emil Atanasov on 10/28/24.
//

import SwiftUI

extension Int: @retroactive Identifiable {
    public var id: Int {
        self
    }
}
struct LazyView: View {
    
//    @StateObject var vm = LazyViewModel()
//    @ObservedObject var vm: LazyViewModel
    @EnvironmentObject var vm: LazyViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            Button {
//                vm.increment()
                vm.items = 1...20
            } label: {
                Text("++")
            }

            LazyHStack {
                
                ForEach(vm.items, id: \.self) { item in
                    VStack {
                        Text("\(item)")
                        AsyncImage(url: URL(string: "https://www.livemint.com/lm-img/img/2024/10/25/600x338/flyingcar-kQQH--621x414LiveMint_1729851591132_1729851591285.jpg"))
                        { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 200, height: 200)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyView()
        .environmentObject(LazyViewModel())
}
