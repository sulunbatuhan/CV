//
//  TableViewCell.swift
//  CV
//
//  Created by batuhan on 6.11.2022.
//

import UIKit

final class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.backgroundColor = .clear
        view.layer.borderWidth = 0.2
        view.layer.borderColor = UIColor.gray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(iconImage:String,label:String){
        self.cellLabel.text = label
        self.iconImage.image = UIImage(systemName: iconImage)
    }

}
