//
//  CustomCellVC.swift
//  todolist
//
//  Created by J on 7/11/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// =====------ CUSTOM CELL VC ------=======
import UIKit

class CustomCellVC: UITableViewCell {

    
    @IBOutlet weak var titleCellLabel: UILabel!
    @IBOutlet weak var dateCellLabel: UILabel!
    @IBOutlet weak var notesCellLabel: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
