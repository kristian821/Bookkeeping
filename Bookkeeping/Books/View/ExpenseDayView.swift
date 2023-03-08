//
//  ExpenseDayView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/8/23.
//

import SwiftUI

struct ExpenseDayView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Starting Balance:").font(.headline
                )
                Spacer()
                Text("$150").font(.title).foregroundColor(.green)
            }
            .padding()
            Form {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Text("transaction")
                }
            }
            VStack {
                Text("Remaining Balance:").font(.headline)
                Text("$150").font(.largeTitle).foregroundColor(.green)
            }
            .padding()
        }
    }
}

struct ExpenseDayView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseDayView()
    }
}
