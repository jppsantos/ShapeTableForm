//
//  PictureTableViewCell.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

import UIKit

class PictureTableViewCell: UITableViewCell {
    @IBOutlet weak var pictureView: UIView!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var pictureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pictureView.layer.cornerRadius = 15
        pictureView.clipsToBounds = true
    }
    
    func setup() {
        //TODO: Setup Cell correctly
    }
    
}
