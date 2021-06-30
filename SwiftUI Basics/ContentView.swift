//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("This is an simple application built in SwiftUI. Click on any option below to understand a little more about this amazing framework.")
                        .padding()
                }
                Divider()
                VStack {
                    HStack {
                        ContentCell(title: "Hello World", description: "Start your first app with SwiftUI.", textColor: Color(.white), backgroundColor: Color(.red))
                        ContentCell(title: "Stack", description: "Organize your elements.", textColor: Color(.white), backgroundColor: Color(.blue))
                    }

                    HStack {
                        ContentCell(title: "Customizations", description: "You can customize your elements in swiftUI easily.", textColor: Color(.black), backgroundColor: Color(.lightGray))
                        ContentCell(title: "Navigation", description: "Navigations between screens can be made with NavigationLink.", textColor: Color(.black), backgroundColor: Color(.orange))
                    }
                    
                    HStack {
                        ContentCell(title: "Tab bars", description: "Add tab bars at your application.", textColor: Color(.white), backgroundColor: Color(.purple))
                    }
                }
                Spacer()
            }
            .navigationTitle("Welcome")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
