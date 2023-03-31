//
//  ExpenseDayView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/8/23.
//

import SwiftUI

struct ExpenseDayView: View {
    var balanceController = BalanceController()
    var expenseController = ExpenseController()
    
    var body: some View {
        VStack {
            HStack {
                Text("Starting\nBalance:").font(.headline
                )
                Spacer()
                Text("$\(balanceController.currentBalance())").font(.title).foregroundColor(.green)
                Spacer()
            }
            .padding()
            Form {
                List(expenseController.expenses) { expense in
//                    ExpenseCell
                }
            }
            VStack {
                Text("Remaining Balance:").font(.headline)
                Text("$\(balanceController.fetchBalance())").font(.largeTitle).foregroundColor(.green)
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
