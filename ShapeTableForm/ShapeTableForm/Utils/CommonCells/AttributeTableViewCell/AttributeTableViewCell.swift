//
//  AttributeTableViewCell.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

import UIKit

class AttributeTableViewCell: UITableViewCell {
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var keyTitle: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.layer.cornerRadius = 15
    }

    func setup() {
        //TODO: setup correctly
    }
    
}
