//
//  ExpenseController.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/11/23.
//

import Foundation


class ExpenseController: ObservableObject {
    let balanceController = BalanceController()
    var expenses : [Expense] = []
    var expense = Expense(name: "", amount: 0.0, recurring: false)
    
    func newExpense(name: String, amount: Double, transactionDate: Date?, startDate: Date?, endDate: Date?, recurring: Bool) -> [Expense] {
        expense = Expense(name: name, amount: amount, transactionDate: transactionDate, startDate: startDate, endDate: endDate, recurring: recurring)
        expenses.append(expense)
        
        balanceController.updateBalance(expense: expense)
        
        return expenses
    }
    
    func isRecurring(_ expense: expense, timeInterval: TimeInterval) {
        if expense.recurring == false {
            return expense.transactionDate
        } else {
            expense.transactionDate = expense.transactionDate.addTimeInterval(timeInterval)
        }
    }
}
