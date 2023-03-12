//
//  AccountListCellView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/6/23.
//

import SwiftUI

struct AccountListCellView: View {
    var body: some View {
            VStack {
                HStack {
                    Text("Checking").font(.title)
                    Spacer()
                }
                HStack {
                    Text("Current Balance:").font(.subheadline)
                    Spacer()
                    Text("$150").foregroundColor(.green)
                }
            }
            .padding()
    }
}

struct AccountListCellView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListCellView()
    }
}
