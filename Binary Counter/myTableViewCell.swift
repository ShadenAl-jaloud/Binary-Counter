//
//  myTableViewCell.swift
//  Binary Counter
//
//  Created by admin on 11/16/22.
//

import UIKit

class myTableViewCell: UITableViewCell {


    @IBOutlet weak var powerOfTen: UILabel!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var plus: UIButton!
    weak var viewController: ViewController?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            viewController?.subtractFromToatal(String(powerOfTen.text!))
            break
        case 1:
            viewController?.addToToatal(String(powerOfTen.text!))
            break
        default:
            break
        }
    }
    
    
    func powerFun(_ power: Int){
        var num = power
        var a = 1
        if power == 1{
            powerOfTen.text = String(a)
        } else {
            
            while num != 0{
                a *= 10
                num -= 1
            }
            powerOfTen.text = String(a)
            
        }}

}
