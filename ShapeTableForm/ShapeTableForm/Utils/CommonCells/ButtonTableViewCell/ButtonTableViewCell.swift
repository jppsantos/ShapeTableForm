//
//  ButtonTableViewCell.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.button.layer.cornerRadius = 15
    }

    func setup() {
        //TODO: setup correctly
    }
    
}
