//
//  PageModel.swift
//  Pinch
//
//  Created by 홍성범 on 2023/01/05.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
