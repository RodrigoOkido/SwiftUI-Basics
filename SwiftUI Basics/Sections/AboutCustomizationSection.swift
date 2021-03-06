//
//  AboutCustomizationSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct AboutCustomizationSection: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Customize elements in SwiftUI it's much more easy and intuitive.")
                    .font(.headline)
                HStack {
                    Text("Hello World!")
                        .padding(10)
                        .background(Color(.gray))
                        .cornerRadius(10)
                        .font(.subheadline)
                    Text("Hello World!")
                        .padding(10)
                        .background(Color(.blue))
                        .cornerRadius(10)
                        .font(.subheadline)
                    Text("Hello World!")
                        .padding(10)
                        .background(Color(.red))
                        .cornerRadius(10)
                        .font(.subheadline)
                }
                
                VStack {
                    Text("Create and customize your view.")
                        .font(.subheadline)
                        .padding()
                    Image("customization_1")
                        .resizable()
                        .frame(width: 300, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                    Image("customization_2")
                        .resizable()
                        .frame(width: 300, height: 210, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                    
                }
                .padding()
                
                Text("Many customizations types are already available in SwiftUI.")
                    .font(.subheadline)

                
            }
            .padding()
            .navigationTitle("Customizations")
        }
    }
    
}

struct AboutCustomizationSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutCustomizationSection()
    }
}
