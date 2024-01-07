//
//  ContentView.swift
//  MenuApp
//
//  Created by erwinagpasa on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State var menuItems:[MenuItem] = [MenuItem]()

  var dataService = DataService()

  var body: some View {
  
    List(menuItems) { item in
      
      MenuListRow(item: item)
        
      }
      .listStyle(.plain)
      .onAppear{
        //Call the Data
        menuItems = dataService.getData()
      }
    }
}

#Preview {
    ContentView()
}
