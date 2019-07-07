//
//  StudentVM.swift
//  MVVMTesting
//
//  Created by thianluankim on 7/7/19.
//  Copyright © 2019 thianluankim. All rights reserved.
//

import Foundation

struct StudentVM {
    var id:String
    var name:String
    var regMonth:Int
    var regDay:Int
    var regYear:Int
    var student:Student?
    
    var regDateStr:String {
        return " \(regDay) \(regMonth) \(regYear)"
    }
    
    init(_ model:Student){
        id = String (model.id)
        name = model.name
        student = model
        regDay = model.regDay
        regMonth = model.regMonth
        regYear = model.regYear
    }
}
