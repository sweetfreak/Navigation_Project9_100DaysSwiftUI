//
//  ContentView.swift
//  Navigation
//
//  Created by Jesse Sheehan on 8/26/24.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

//FIRST PRACTICE

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
                //Navigation Links/the DetailView is created automatically, when opening the app.
                //It's okay when there's just one, but not when there are tons - it'll make duplicates!
                //DetailView(number: 556)
                List(0..<100) {i in
                  //  NavigationLink("Tap Me") {
                       // DetailView(number: i) }
                    NavigationLink("Select \(i)", value: i)
                }
                .navigationDestination(for: Int.self) { selection in
                        Text("You selected \(selection)")
                }
                .navigationDestination(for: Student.self) { student in
                    Text("You selected \(student.name)")
                }
        }
    }
}

#Preview {
    ContentView()
}
