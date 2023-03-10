//
//  Expense.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/8/23.
//

import Foundation

struct Expense: Codable, Identifiable {
    let id: UUID
    var name: String
    var amount: Double
    var transactionDate: Date?
    var startDate: Date?
    var endDate: Date?
    
}
