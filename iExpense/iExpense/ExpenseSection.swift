//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Steve Hong on 2023/03/08.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        
        Section(title) {
            ForEach(expenses) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                    
                    Spacer()
                    
                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .foregroundColor(item.amount > 100 ? .red : item.amount > 10 ? .blue : .black)
                }
            }
            .onDelete(perform: deleteItems)
        }
    }
}
//
//struct ExpenseSection_Previews: PreviewProvider {
//    static var previews: some View {
//        ExpenseSection()
//    }
//}
