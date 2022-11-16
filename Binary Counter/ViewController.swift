//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 11/16/22.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var totalL: UILabel!
    
    var initTotal = "0"
    let arrayNumber = Array(1...16)
    override func viewDidLoad() {
        super.viewDidLoad()
        totalL.text = initTotal
        // Do any additional setup after loading the view.
    }
    
    func addToToatal(_ num: String){
        
        if initTotal == "0" {
            initTotal = num
            
        } else{
            initTotal += "+"
            initTotal += num
        }
        let total = NSExpression(format: initTotal)
        let result = total.expressionValue(with: nil, context: nil) as! Int
        totalL.text = String(result)
    }
    
    func subtractFromToatal(_ num: String){
        
        if initTotal == "0" {
            initTotal = num
            
        } else{
            initTotal += "-"
            initTotal += num
        }
        let total = NSExpression(format: initTotal)
        let result = total.expressionValue(with: nil, context: nil) as! Int
        totalL.text = String(result)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let array = arrayNumber[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tenPower", for: indexPath) as! myTableViewCell
        cell.powerFun(array)
        cell.viewController = self
        
        return cell
    }
    
    
}

