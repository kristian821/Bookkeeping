//
//  AccountLIstView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/6/23.
//

import SwiftUI

struct AccountListView: View {
    var body: some View {
        NavigationView() {
            List {
                ForEach(0 ..< 5) { item in
                    NavigationLink(destination: AccountDetailView()) {
                        AccountListCellView()
                    }
                }
            }
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
    }
}
