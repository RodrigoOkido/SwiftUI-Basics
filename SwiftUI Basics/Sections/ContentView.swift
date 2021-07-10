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
                        Text("This is an simple application built in SwiftUI. You can check below some amazing things you can do using this framework.")
                            .font(.headline)
                            .lineLimit(5)
                    }
                    Divider()
                    HStack {
                        NavigationLink (
                            destination: HelloWorldSection(),
                            label: {
                                ContentCell(title: "Hello World", description: "Start your first app with SwiftUI.", textColor: Color(.white), backgroundColor: Color(.systemRed))
                            })
                        
                        NavigationLink (
                            destination: AboutStackSection(),
                            label: {
                                ContentCell(title: "Stack", description: "Organize your elements.", textColor: Color(.white), backgroundColor: Color(.systemBlue))
                            })
                    }

                    HStack {
                        NavigationLink (
                            destination: AboutCustomizationSection(),
                            label: {
                                ContentCell(title: "Customizations", description: "You can customize your elements in swiftUI easily.", textColor: Color(.white), backgroundColor: Color(.systemGray))
                            })
                        
                        NavigationLink (
                            destination: AboutNavigationSection(),
                            label: {
                                ContentCell(title: "Navigation", description: "How navigate between my Views in SwiftUI", textColor: Color(.white), backgroundColor: Color(.systemOrange))
                            })
                    }
                    
                    HStack {
                        NavigationLink (
                            destination: AboutTabBarsSection(),
                            label: {
                                ContentCell(title: "Tab bars", description: "Add tab bars at your application.", textColor: Color(.white), backgroundColor: Color(.systemPurple))
                            })
                        
                        NavigationLink (
                            destination: AboutTableViewSection(),
                            label: {
                                ContentCell(title: "TableView", description: "How do TableView in SwifftUI.", textColor: Color(.white), backgroundColor: Color(.systemPink))
                            })
                    }
                    
                    HStack {
                        NavigationLink (
                            destination: AboutEventsSection(),
                            label: {
                                ContentCell(title: "OnEvents", description: "Check one event example in SwiftUI.", textColor: Color(.white), backgroundColor: Color(.systemTeal))
                            })
                    }
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
