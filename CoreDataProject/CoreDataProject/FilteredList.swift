//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by 홍성범 on 2023/05/02.
//

import CoreData
import SwiftUI

struct FilteredList<T: NSManagedObject, Content: View>: View {
    var fetchRequest: FetchRequest<T>
    var singers: FetchedResults<T> { fetchRequest.wrappedValue }

    // this is our content closure; we'll call this once for each item in the list
    let content: (T) -> Content

    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { candy in
            self.content(candy)
        }
    }

    init(type: String = "CONTAINS[c]", filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content) {
        fetchRequest = FetchRequest<T>(entity: T.entity(), sortDescriptors: [], predicate: NSPredicate(format: "%K \(type) %@", filterKey, filterValue))
        self.content = content
    }
}

