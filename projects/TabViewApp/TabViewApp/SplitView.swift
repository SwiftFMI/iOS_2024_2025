//
//  SplitView.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/11/24.
//
import SwiftUI

extension String: @retroactive Identifiable {
    public var id: String {
        self
    }
}

struct SplitView: View {
    @State private var employeeIds: Set<String> = []
    var employees = ["Ivan", "Petar", "Joro"]
    
    var body: some View {
        NavigationSplitView {
            List(employees, selection: $employeeIds) { employee in
                Text(employee)
            }
        } detail: {
//            EmployeeDetails(for: employeeIds)
            Text(employeeIds.first ?? "ddsadsadsa")
            Button {
                loadJSON()
            } label: {
                Text("LoadJSON")
            }

        }
    }
    
    func loadJSON() {
        if let gameJson = Bundle.main.url(forResource: "game", withExtension: "json") {
            print(gameJson.path)
            print(FileManager.default.fileExists(atPath: gameJson.path))
            
            if let content = FileManager.default.contents(atPath: gameJson.path) {
                print(String(data:content, encoding: .utf8))
            } else {
                print("unable to read!")
            }
        } else {
            print("Unable to construct an url")
        }
    }
    
}


struct EmployeeDetails: View {
    private var employeeId: String
    
    init(for employeeId: String) {
        self.employeeId = employeeId
    }
    
    var body: some View {
        Text(employeeId)
    }
    
}
