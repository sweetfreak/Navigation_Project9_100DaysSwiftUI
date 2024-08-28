//
//  ContentView.swift
//  Navigation
//
//  Created by Jesse Sheehan on 8/26/24.
//

import SwiftUI

//Day 45

struct ContentView: View {
    
    @State private var title = "SwiftUI"
    
    var body: some View {
        
        NavigationStack {
            Text("Hello, world")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
        
//        NavigationStack {
//            Text("Hello, world!")
//                .toolbar {
//                    ToolbarItemGroup(placement: .topBarLeading) {
//                        Button("Tap Me") {
//                            
//                        
//                        }
//                        
//                        Button("Or Tap Me") {
//                            
//                        }
//                    }
//                    
//                    ToolbarItem(placement: .topBarLeading) {
//                        Button("Or 3rd, Tap Me") {
//
//                        }
//                    }
//                    
//                }
//                .navigationBarBackButtonHidden() //can't go back till they made a choice - like cancel, save, etc
//        }
        
//        NavigationStack {
//            List(0..<100) { i in
//                    Text("Row \(i)")
//            }
//            .navigationTitle("Title Goes Here")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbarBackground(.blue)// , for: .navigationBar)
//            .toolbarColorScheme(.dark)
//            //.toolbar(.hidden, for:.navigationBar)
//        }
    }
}

// Day 444

//@Observable
//class PathStore {
//    //NOTE: could use [Int] instead of navigationpaths and their codable representations, and it'll be simpler when you get to the encoding part
//    var path: NavigationPath {
//        didSet {
//            save()
//        }
//    }
//    
//    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
//    
//    init() {
//        if let data = try? Data(contentsOf: savePath) {
//            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
//                path = NavigationPath(decoded) //just "decode" if it's an [Int]
//                return
//            }
//        }
//        
//        path = NavigationPath()
//    }
//    
//    func save() {
//        
//        //makes sure the navigationPath is codable and can be used here.
//        guard let representation = path.codable else { return }
//        
//        do {
//            let data = try JSONEncoder().encode(representation)   //(path)
//            try data.write(to: savePath)
//        } catch {
//            print("Failed to save navigation data")
//        }
//    }
//    
//}
//
//
//struct DetailView: View {
//    var number: Int
//    //@Binding var path: [Int] // use NavigationPath instead?
//    @Binding var path: NavigationPath
//    
//    var body: some View {
//        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
//            .navigationTitle("Number: \(number)")
//            .toolbar {
//                Button("Home") {
//                    path = NavigationPath()
//                }
//            }
//    }
//}
//
//struct ContentView: View {
    
    //@State private var path = [Int]()
    
    //Navpath provide 2 helpers to help users save their path data
    //@State private var path = NavigationPath()
//    @State private var pathStore = PathStore()
//    
//    
//    var body: some View {
//        
//        NavigationStack(path: $pathStore.path) {
//            DetailView(number: 0, path: $pathStore.path)
//                .navigationDestination(for: Int.self) { i in
//                    DetailView(number: i, path: $pathStore.path)
//                }
//        }
        
        //@Binding - lets you pass a piece of state into another view and modify it from there. Changing it in one place, will change it everywhere
//        NavigationStack(path: $path) {
//            DetailView(number: 0, path: $path)
//                .navigationDestination(for: Int.self) { i in
//                    DetailView(number: i, path: $path)
//                }
//        }
        
        
        //Navigation Destination = type-eraser. Programmatically sending users to certain views based on the data that was passed - like whether it's an int or a string
//        NavigationStack(path: $path) {
//            List {
//                ForEach(0..<5) { i in
//                    NavigationLink("Select Number: \(i)", value: i)
//                }
//                
//                ForEach(0..<5) {i in
//                    NavigationLink("Select String: \(i)", value: String(i))
//                }
//            }
//            .toolbar {
//                Button("Push 556") {
//                    path.append(556)
//                }
//                
//                Button("Push Hello") {
//                    path.append("Hello")
//                }
//            }
//            .navigationDestination(for: Int.self) { selection in
//                    Text("You selected the number \(selection)")
//            }
//            .navigationDestination(for: String.self) { selection in
//                    Text("You selected the string \(selection)")
//            }
//        }
        
        
        
        
        
        //you can create a two way binding path and attach it to the navigation stack to lead the user to where they want/you want them to go. Like skip ahead to the end, but when they
        
//        NavigationStack(path: $path) {
//            VStack {
//                Button("Show 32") {
//                    path = [32]
//                }
//                
//                Button("Show 64") {
//                    path.append(64)
//                }
//                
//                Button ("Show 32, then 64") {
//                    path = [32, 64]
//                }
//            }
//            .navigationDestination(for: Int.self) { selection in
//                    Text("You selected \(selection)")
//            }
//        }
        
//    }
//}

//Day 43 - Hashable, navigation link and navigation destination

//struct DetailView: View {
//    var number: Int
//    
//    var body: some View {
//        Text("Detail View \(number)")
//    }
//    
//    init(number: Int) {
//        self.number = number
//        print("Creating detail view \(number)")
//    }
//}
//
//struct Student: Hashable {
//    var id = UUID()
//    var name: String
//    var age: Int
//}
//
//struct ContentView: View {
//    var body: some View {
//        
//        NavigationStack {
//                //Navigation Links/the DetailView is created automatically, when opening the app.
//                //It's okay when there's just one, but not when there are tons - it'll make duplicates!
//                //DetailView(number: 556)
//                List(0..<100) {i in
//                  //  NavigationLink("Tap Me") {
//                       // DetailView(number: i) }
//                    NavigationLink("Select \(i)", value: i)
//                }
//                .navigationDestination(for: Int.self) { selection in
//                        Text("You selected \(selection)")
//                }
//                .navigationDestination(for: Student.self) { student in
//                    Text("You selected \(student.name)")
//                }
//        }
//    }
//}

#Preview {
    ContentView()
}
