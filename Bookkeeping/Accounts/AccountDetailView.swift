//
//  AccountDetailView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/6/23.
//

import SwiftUI

struct AccountDetailView: View {
    var body: some View {
        NavigationView() {
            
            LazyVStack {
                ChartView()
                HStack {
                    Text("Current Balance:").font(.headline)
                    
                    Spacer()
                    
                    Text("$150").foregroundColor(.green)
                }.padding()
                Divider()
              
                Spacer()
                
                Form {
                    Section(header: Text("Recent Transactions")){
                        // TODO: Transaction cell
                    }
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("Checking")
        }
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView()
    }
}
