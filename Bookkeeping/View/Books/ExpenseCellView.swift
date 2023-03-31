//
//  ExpenseCellView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/11/23.
//

import SwiftUI

struct ExpenseCellView: View {
    let expense: Expense
    
    func returnDate(){
        if expense.transactionDate != nil {
            expense.startDate = nil
            expense.endDate = nil
        }
    }
    var body: some View {
        VStack {
            HStack{
                Text(expense.name).font(.headline)
                Text(expense.transactionDate?.formatted(date: .abbreviated, time: .none))
            }
        }
    }
}

struct ExpenseCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCellView(expense: Expense(name: "Payroll", amount: 2200, transactionDate: Date.now, recurring:true))
    }
}
