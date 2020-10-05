//
//  Food.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 04/10/20.
//

import UIKit

struct Food {
    var id: UUID? = nil
    var picture: UIImage
    var name: String
    var price: Int
    var doneIn: Int
}

extension Food {
    func generateAtributes() -> [Attribute] {
        var attributes: [Attribute] = []
        
        let nameAtt = Attribute(type: .name, key: "Name", value: name)
        let priceAtt = Attribute(type: .name, key: "Price", value: String(price))
        let doneInAtt = Attribute(type: .name, key: "Preparation Time", value: String(doneIn))
        
        attributes.append(nameAtt)
        attributes.append(priceAtt)
        attributes.append(doneInAtt)
        
        return attributes
    }
}
