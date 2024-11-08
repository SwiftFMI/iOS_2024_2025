//
//  LazyViewModel.swift
//  DebugApp
//
//  Created by Emil Atanasov on 11/04/24.
//

import Foundation


final class LazyViewModel: ObservableObject {
    @Published var items = 1...10
    
    func increment() {
        items = 1...20
    }
}
