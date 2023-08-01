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
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false
    @State private var pickupTime = "Now"
    
    let tipAmounts = [10, 15, 20, 25, 0]
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    let pickupTimes = ["Now", "Tonight", "Tomorrow Morning"]
    
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
            
            Section {
                Picker("When do you want to pick up?", selection: $pickupTime) {
                    ForEach(pickupTimes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order confirmed", isPresented: $showingPaymentAlert) {
            
        } message: {
            Text("Your total was \(totalPrice) - thank you!")
        }
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
