//
//  Hymn.swift
//  Cantor Cristao
//
//  Created by Daniel Moura on 07/04/23.
//

import Foundation

struct Hymn: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var lyrics: String
    
    var numberedTitle: String {
        "\(id) - \(title)"
    }
}
