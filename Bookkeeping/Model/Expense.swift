//
//  Expense.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/8/23.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    var name: String
    var amount: Double
    var transactionDate: Date?
    var startDate: Date?
    var endDate: Date?
    var recurring: Bool = false
    
    func newExpense(name: String, amount: Double, transactionDate: Date?, startDate: Date?, endDate: Date?, recurring: Bool) -> Expense {
        return Expense(name: name, amount: amount, transactionDate: transactionDate, startDate: startDate, endDate: endDate, recurring: recurring)
    }
}
