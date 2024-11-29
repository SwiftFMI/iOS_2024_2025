//
//  ContentView.swift
//  CustomComponent
//
//  Created by Emil Atanasov on 11/14/24.
//

import SwiftUI

func generateMonthArray() -> [String] {
    var months: [String] = []
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM ''yy"

    // Start date - Jan '23
    var currentDateComponents = DateComponents(year: 2023, month: 1)
    let calendar = Calendar.current
    
    while let date = calendar.date(from: currentDateComponents),
          date <= Date() { // up to the current month
        let monthString = dateFormatter.string(from: date)
        months.append(monthString)
        
        // Move to the next month
        currentDateComponents.month! += 1
    }
    
    return months
}

struct ContentView: View {
    let months: [String]
    @State var selectedMonth: Int
    
    init() {
        self.months = generateMonthArray()
        self.selectedMonth = 0
    }
    
    var body: some View {
        VStack {
            CustomView()
            HMonthsView(list: months)
            HorizontallyScrollableComponent(data: months, selectedItemIndex: $selectedMonth)
            Button {
                selectedMonth = 5
            } label: {
                Text("Set it!")
            }

        }
        .padding()
    }
}

struct CustomView: View {
    let range: [Int] = Array(1...31)
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(range, id: \.self) { item in
                    Text("\(item)")
                }
            }
        }
        .frame(height: 100)
    }
}

struct HMonthsView: View {
    let list: [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(list, id: \.self) { item in
                    Text("\(item)")
                }
            }
        }
        .frame(height: 100)
    }
}

struct HorizontallyScrollableComponent: View {
    let data: [String] // Array of data to display
    @Binding var selectedItemIndex: Int // Track the item to scroll to

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(data.indices, id: \.self) { index in
                        Text(data[index])
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .id(index) // Assign an ID for each item
                    }
                }
            }
            .onChange(of: selectedItemIndex) { newIndex in
                let index = newIndex
                withAnimation {
                    proxy.scrollTo(index, anchor: .center)
                }
            }
        }
        .onAppear {
            // Example: Automatically scroll to the 3rd item on appear
            selectedItemIndex = 2
        }
    }
}

#Preview {
    ContentView()
}
