//
//  FormViewModelFactoryProtocol.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 04/10/20.
//

import Foundation

//This protocol will be used to start our factory
protocol FormViewModelFactoryProtocol {
    var items: [FormViewModelItemProtocol] { get set }
    func createForm() -> FormViewModelFactoryProtocol?
}
