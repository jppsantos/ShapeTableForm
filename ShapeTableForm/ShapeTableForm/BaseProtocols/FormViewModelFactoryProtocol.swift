//
//  FormViewModelFactoryProtocol.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 04/10/20.
//

import Foundation

protocol FormViewModelFactoryProtocol {
    var items: [FormViewModelItemProtocol] { get set }
    func createForm() -> FormViewModelFactoryProtocol
}
