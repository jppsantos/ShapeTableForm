//
//  Attribute.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

import UIKit

enum AttributeType {
    case id
    case name
    case price
    case doneIn
}

struct Attribute {
    var type: AttributeType
    var key: String
    var value: String
    var keyboardType: UIKeyboardType = .default
    var userInteractionEnable = true
}

extension Attribute {
    static func createEmptyFoodAttributeFields() -> [Attribute] {
        let fields: [Attribute] = [
            .init(type: .name, key: "Name", value: ""),
            .init(type: .price, key: "Price", value: "", keyboardType: .numberPad),
            .init(type: .doneIn, key: "Preparation Time", value: "", keyboardType: .numberPad)
        ]
        
        return fields
    }
}
