//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Gabriela Valentina on 19.12.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct TipsyBrain{
    var p = "10%"
    var bill:String?
    var doubleBill:Double?
    var pro = 0.1
    mutating func updateBill(string:String?){
        bill = string ?? "0.0"
        doubleBill = Double(bill!)
    }
    mutating func updateProcent(string:String?){
        p = string!
        if p == "0%"{
            pro = 0.0
        }else if p == "10%"{
            pro = 0.1
        }else{
            pro = 0.2
        }
    }
    var split = 2.0
    var intSplit = 2
    mutating func updateSplit(double:Double)->String{
        split = double
        intSplit = Int(double)
        return String(format: "%.0f", double)
    }
    var value:Float?
    mutating func updateValue(){
        value = Float((doubleBill ?? 0.0 + (doubleBill ?? 0.0 * pro))/split)
        
    }

}
