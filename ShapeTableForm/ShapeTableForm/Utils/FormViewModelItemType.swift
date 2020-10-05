//
//  FormViewModelItemType.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

import UIKit

/**
 Note: These structs bellow will represent the content of every section
 
 Each item below represents a session type in the table. This means that if you want to create a new item for the table, you can implement the FormViewModelItemProtocol and add the properties of that new item. Remember to add a new case in the FormViewModelItemType that will represent your new item type
 
 This applies the second principle of SOLID, Open Close Principle. You can add new behavior without affecting previous ones
 
 */

struct FormViewModelPictureItem: FormViewModelItemProtocol {
    var type: FormViewModelItemType {
        return .picture
    }
    
    var pictureImage: UIImage
    var pictureLabel: String?
}

struct FormViewModelAttributeItem: FormViewModelItemProtocol {
    var type: FormViewModelItemType {
        return .attribute
    }
    
    var attributes: [Attribute]
    
    var rowCount: Int {
        return attributes.count
    }
}

struct FormViewModelButtonItem: FormViewModelItemProtocol {
    var type: FormViewModelItemType {
        return .button
    }
    
    var buttonLabel: UILabel
    var buttonColor: UIColor
}
