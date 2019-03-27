
//
//  analy_TVcell.swift
//  AnalysisGraph
//
//  Created by Apple on 22/03/19.
//  Copyright © 2019 com.apple. All rights reserved.
//

import UIKit

class analy_TVcell: UITableViewCell {

 
    @IBOutlet weak var view_lableView    : UIView!
    @IBOutlet weak var const_widthOfView : NSLayoutConstraint!
    @IBOutlet weak var Lbl_showCount     : UILabel!
    
    let gradient: CAGradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
