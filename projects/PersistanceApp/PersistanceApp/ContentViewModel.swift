//
//  ContentViewModel.swift
//  PersistanceApp
//
//  Created by Emil Atanasov on 12/02/24.
//
import KeychainStored
import Combine

class ContentViewModel: ObservableObject {
    @KeychainStored(service: "com.example.my-service") var mySecureData: String?
    
    func setSecure(str: String) {
        mySecureData = str
    }
    
    func getSecure() -> String? {
        mySecureData
    }
}
