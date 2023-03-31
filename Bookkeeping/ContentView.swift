//
//  ContentView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/5/23.
//

import SwiftUI

struct ContentView: View {
//    @State var Selection = 1
    var body: some View {
        TabView {
            ExpenseDayView().tabItem{
                Label("Expanses", systemImage: "books.vertical.fill")
            }.tag(1)
            AccountListCellView().tabItem {
                Label("Accounts", systemImage: "list.bullet.rectangle.portrait")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
