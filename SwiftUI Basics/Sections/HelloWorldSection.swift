//
//  HelloWorldSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct HelloWorldSection: View {
    var body: some View {
        VStack {
            Text("Creating an application with SwiftUI its really simple and intuitive.")
                .font(.headline)
            
            Image("hello_world")
                .resizable()
                .frame(width: 300, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()
            
            Text("More declarative syntax, its possible to create complex programs more easily to read and understand.")
                .font(.caption)
                
            Spacer(minLength: 30)
            Text("Check more about SwiftUI")
            
            Link("Check Here", destination: URL(string: "https://developer.apple.com/documentation/swiftui/")!)
                .padding()
                .foregroundColor(.white)
                .background(Color(.systemBlue))
                .cornerRadius(15)
                
            
        }
        .padding()
        .navigationTitle("Hello SwiftUI!")

    }
}

struct HelloWorldSection_Previews: PreviewProvider {
    static var previews: some View {
        HelloWorldSection()
    }
}
