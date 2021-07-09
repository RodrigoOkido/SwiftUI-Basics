//
//  AboutTableViewSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 08/07/21.
//

import SwiftUI

struct AboutTableViewSection: View {
    
    let tableViewExample: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Basic TableView example in SwiftUI.")
                        .font(.headline)
                    
                    ForEach(tableViewExample, id: \.self) { item in
                        VStack(alignment: .leading) {
                            Text("\(item) item")
                        }
                        .padding()
                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Divider()
                    }
                }
                Text("Code of this TableView")
                    .padding()
                    .font(.headline)
                Image("TableView")
                    .resizable()
                    .frame(width: 280, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }
            .padding()
            .navigationTitle("TableView")
        }
    }
}


struct AboutTableViewSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutTableViewSection()
    }
}
