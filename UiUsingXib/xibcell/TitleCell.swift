//
//  TitleCEll.swift
//  xibcell
//
//  Created by Kshitiz Gupta on 09/02/17.
//  Copyright © 2017 Kshitiz Gupta. All rights reserved.
//

import UIKit

class TitleCell : UITableViewCell {
    
   
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    func configureWithData(_ data : [String:String]) {
        
        titleLabel.text = data["title"]
        titleTextField.text = data["placeholder"]
    }

}
