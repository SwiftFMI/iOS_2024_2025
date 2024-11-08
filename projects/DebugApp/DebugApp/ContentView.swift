//
//  ContentView.swift
//  DebugApp
//
//  Created by Emil Atanasov on 10/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var color: Color = .red
    @State var date = Date()
    
    @State var username: String = ""
    
    @State var isUsernameLogged = false
    
    @State var input: MyLabel = MyLabel(text: "demo", icon: "person")
    
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Button {
                    print("Selected date is \(date)")
                    print("Username= \(username)")
                    color = .green
                    isUsernameLogged = false
                } label: {
                    Text("Logout!")
                }
                ColorPicker("Red color", selection: $color)
                DatePicker(selection: $date, label: { Text("Date") })
                Label("Label", systemImage: "house")
                //            MultiDatePicker("Label", selection: )
                //            Picker(selection: .constant(1), label: Text("Picker")) {
                //                Text("1").tag(1)
                //                Text("2").tag(2)
                //            }
                //            ProgressView(value: 0.25)
                //            Slider(value: .constant(2.0))
                input
                if !isUsernameLogged {
                    //                MyInput2(text: "username", icon: "person")
                    MyInput(text: "username", icon: "person", input: $username)
                    HStack(spacing: 20) {
                        Spacer()
                        Button {
                            isUsernameLogged = true
                            input = MyLabel(text: "Test", icon: "house")
                        } label: {
                            MyLabel(text: "Login", icon: "arrow.up.left.and.arrow.down.right")
                        }
                        .buttonStyle(.bordered)
                        .background(Color.red)
                        .padding(20)
                        //                    .foregroundStyle(Color.green)
                        
                        
                    }
                } else {
                    LazyView()
                }
                
            }
        }
        .padding()
        .foregroundStyle(Color.green)
//        .overlay {
//            AsyncImage(url: URL(string: "https://www.livemint.com/lm-img/img/2024/10/25/600x338/flyingcar-kQQH--621x414LiveMint_1729851591132_1729851591285.jpg"))
//            { image in
//                image.resizable()
//            } placeholder: {
//                ProgressView()
//            }
//                .frame(width: 200, height: 200)
//        }
    }
}


struct MyLabel: View {
    let text: String
    let icon: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(systemName: icon)
        }
    }
}

struct MyInput2: View {
    let text: String
    let icon: String
    @State var input: String = ""
    var body: some View {
        HStack {
            Image(systemName: icon)
            TextField(text, text: $input)
            
        }
    }
}

struct MyInput: View {
    let text: String
    let icon: String
//    @State var input: String = ""
    @Binding var input: String
    var body: some View {
        HStack {
            Image(systemName: icon)
            TextField(text, text: $input)
            
        }
    }
}


#Preview {
    ContentView()
}
