//
//  BalanceController.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/11/23.
//

import Foundation
import Combine

class BalanceController: ObservableObject {
    var balance = Balance(startBalance: 0)
    
    func currentBalance() -> Double {
        return balance.endBalance ?? balance.startBalance
    }
    
    func fetchBalance() -> Double {
                return currentBalance()
    }
    
    func updateBalance(expense: Expense) -> Double {
        balance.endBalance = balance.startBalance + expense.amount
        
        return currentBalance()
    }
 
    
    enum BalanceError: Error, LocalizedError {
        case balanceError
    }
}
