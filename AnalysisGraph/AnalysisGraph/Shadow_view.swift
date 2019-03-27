//
//  Shadow_view.swift
//  healthbot2
//
//  Created by Apple on 01/02/19.
//  Copyright © 2019 com.apple. All rights reserved.
//

import UIKit

class Shadow_view: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //self.backgroundColor = UIColor(red: 44.0/255.0, green: 165.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 5.0
        layer.cornerRadius = 10
        layer.masksToBounds = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //self.backgroundColor = UIColor(red: 44.0/255.0, green: 165.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 5.0
        layer.cornerRadius = 10
        layer.masksToBounds = false
        
        
    }

}
