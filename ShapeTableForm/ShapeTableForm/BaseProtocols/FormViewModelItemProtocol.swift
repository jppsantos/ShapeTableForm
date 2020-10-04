//
//  FormViewModelFactoryProtocol.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 04/10/20.
//

import Foundation

enum FormViewModelItemType {
    case picture
    case attribute
    case button
}

protocol FormViewModelItemProtocol {
    var type: FormViewModelItemType { get }
    var rowCount: Int { get }
}

extension FormViewModelItemType {
    var rowCount: Int {
        return 1
    }
}



