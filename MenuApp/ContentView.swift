//
//  ContentView.swift
//  MenuApp
//
//  Created by erwinagpasa on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
  
  var menuItems:[MenuItem] = [MenuItem]()

  var body: some View {
  
    List(menuItems) { item in
      
        HStack {
          Image(item.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 50)
            .cornerRadius(5)

          Text(item.name)
            .bold()
          
          Spacer()
          
          Text("$" + item.price)


        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
        
      }
      .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
