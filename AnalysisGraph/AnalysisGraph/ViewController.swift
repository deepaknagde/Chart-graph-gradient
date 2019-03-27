//
//  ViewController.swift
//  AnalysisGraph
//
//  Created by Apple on 22/03/19.
//  Copyright © 2019 com.apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    var arr_ : NSMutableArray = NSMutableArray()
    var arr_Int = [1,5,4,8,5,2,10,4,9,3]
    var constant_width : CGFloat!
    
    @IBOutlet weak var view_top         : UIView!
    @IBOutlet weak var tbl_myTableVew : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let asd = NSMutableDictionary()
        let asd1 = NSMutableDictionary()
        let asd2 = NSMutableDictionary()
        
        let dict = ["type":"add","Title":"12th March 2019","detail":""] as [String : Any]
        let dict1 = ["type":"level","Title":"12th March 2019","detail":["cell1","cell2"]] as [String : Any]
        let dict2 = ["type":"level","Title":"11th March 2019","detail":["A1","A2","A3"]] as [String : Any]
        asd.setDictionary(dict)
        asd1.setDictionary(dict1)
        asd2.setDictionary(dict2)
        
        arr_.add(asd)
        arr_.add(asd1)
        arr_.add(asd2)
                
    }
    
    
    //*****************************************************************
    //MARK:- TABLE VIEW
    //*****************************************************************
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr_.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0{
            return 80
        }else{
            return 50.0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0{
            return view_top
        }
        else{
            let dictTemp = arr_.object(at: section) as! NSDictionary
            let st_Title = dictTemp["Title"] as! String
            
            let view_Header = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 50))
            view_Header.backgroundColor = .white
            
            let img_forCircle = UIImageView(frame: CGRect(x: 29, y: 25, width: 25, height: 25))
            img_forCircle.image = #imageLiteral(resourceName: "circleOutline")
            view_Header.addSubview(img_forCircle)
            
            let Lbl_lineBelowCircle = UILabel(frame: CGRect(x: 40, y: 0, width: 2, height: 25))
            
            if section == 1{
                Lbl_lineBelowCircle.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.7411764706, blue: 0.6784313725, alpha: 1)
                
            }else{
                Lbl_lineBelowCircle.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            }
            view_Header.addSubview(Lbl_lineBelowCircle)
            let Lbl_lineAbovCircle = UILabel(frame: CGRect(x: 40, y: 38, width: 2, height: 12))
            Lbl_lineAbovCircle.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            
            let Lbl_header = UILabel(frame: CGRect(x: 90, y: 13, width: 200, height: 50))
            Lbl_header.text = st_Title
            Lbl_header.textColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            view_Header.addSubview(Lbl_header)
            
            return view_Header
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let dictTemp = arr_.object(at: section) as! NSDictionary
        let type = dictTemp["type"] as! String
        if type == "level"{
            return 10
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analy_TVcell", for: indexPath) as! analy_TVcell
        let int_value = arr_Int[indexPath.row]
        
        cell.Lbl_showCount.text = "\(int_value)"
        cell.gradient.colors = [#colorLiteral(red: 0.1568295956, green: 0.6959596276, blue: 0.7224772573, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1),#colorLiteral(red: 0.9680988193, green: 0.2668119669, blue: 0.4549171329, alpha: 1)].map { $0.cgColor }
        cell.gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        cell.gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        cell.const_widthOfView.constant = 0.0
        constant_width = (self.view.frame.size.width - 142)/10
        switch int_value {
        case 1:
            
            cell.gradient.locations = [1.0, 0.0, 0.0, 0.0]
            cell.const_widthOfView.constant = constant_width
            break
        case 2:
            
            cell.gradient.locations = [1.0, 0.0, 0.0, 0.0]
            cell.const_widthOfView.constant = constant_width*2
            
            break
        case 3:
            
            cell.gradient.locations = [0.6, 1.0, 0.0, 0.0]
            cell.const_widthOfView.constant = constant_width*3
            
            break
            
        case 4:
            
            cell.gradient.locations = [0.5, 1.0, 0.0, 0.0]
            cell.const_widthOfView.constant = constant_width*4
            
            break
        case 5:
            
            cell.gradient.locations = [0.3, 1.0, 0.0, 0.0]
            cell.const_widthOfView.constant = constant_width*5
            break
        case 6:
            
            cell.gradient.locations = [0.2, 0.8, 1.0, 0.0]
            cell.const_widthOfView.constant = constant_width*6
            
            break
        case 7:
            
            cell.gradient.locations = [0.1, 0.7, 1.0, 0.0]
            cell.const_widthOfView.constant = constant_width*7
            
            break
        case 8:
            
            cell.gradient.locations = [0.2, 0.7, 0.9, 1.0]
            cell.const_widthOfView.constant = constant_width*8
            
            break
        case 9:
            
            cell.gradient.locations = [0.2, 0.5, 0.8, 1.0]
            cell.const_widthOfView.constant = constant_width*9
            
            break
        case 10:
            
            cell.gradient.locations = [0.2, 0.5, 0.7, 1.0]
            cell.const_widthOfView.constant = constant_width*10
            
            break
            
        default:
            break
        }
        cell.gradient.frame = CGRect(x: 0.0, y: 0.0, width: cell.const_widthOfView.constant, height: 15)
        cell.gradient.cornerRadius = 7.5
        cell.view_lableView.layer.insertSublayer(cell.gradient, at: 0)
        
        return cell
    }
}
