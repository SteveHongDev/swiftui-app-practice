//
//  CheckoutView.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
