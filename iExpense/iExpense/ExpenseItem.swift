//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Steve Hong on 2023/03/08.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
