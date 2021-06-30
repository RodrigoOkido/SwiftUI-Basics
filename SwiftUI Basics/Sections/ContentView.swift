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
            ScrollView {
                VStack {
                    VStack {
                        Text("This is an simple application built in SwiftUI. Select a option below to understand a little more about this amazing framework.")
                            .padding()
                            .lineLimit(5)
                    }
                    Divider()
                    HStack {
                        NavigationLink (
                            destination: HelloWorldSection(),
                            label: {
                                ContentCell(title: "Hello World", description: "Start your first app with SwiftUI.", textColor: Color(.white), backgroundColor: Color(.red))
                            })
                        
                        NavigationLink (
                            destination: AboutStackSection(),
                            label: {
                                ContentCell(title: "Stack", description: "Organize your elements.", textColor: Color(.white), backgroundColor: Color(.blue))
                            })
                    }

                    HStack {
                        NavigationLink (
                            destination: AboutCustomizationSection(),
                            label: {
                                ContentCell(title: "Customizations", description: "You can customize your elements in swiftUI easily.", textColor: Color(.black), backgroundColor: Color(.lightGray))
                            })
                        
                        NavigationLink (
                            destination: AboutNavigationSection(),
                            label: {
                                ContentCell(title: "Navigation", description: "Navigations between screens can be made with NavigationLink.", textColor: Color(.black), backgroundColor: Color(.orange))
                            })
                    }
                    
                    HStack {
                        NavigationLink (
                            destination: AboutTabBarsSection(),
                            label: {
                                ContentCell(title: "Tab bars", description: "Add tab bars at your application.", textColor: Color(.white), backgroundColor: Color(.purple))
                            })
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Welcome")
        }
        .background(Color(UIColor.systemBackground))


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
