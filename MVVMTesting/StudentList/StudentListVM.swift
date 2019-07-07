//
//  StudentListVM.swift
//  MVVMTesting
//
//  Created by thianluankim on 7/7/19.
//  Copyright © 2019 thianluankim. All rights reserved.
//

import Foundation
struct StudentListVM {
    var studentVMs:[StudentVM]?
    init (){
        studentVMs = [StudentVM]()
    }
    
    mutating func createStudent(name:String){
        let latestID = getNewStudentID()
        let newStudent = Student(id: latestID, name: name, regMonth: 04, regDay: 02, regYear: 1993)
        addStudent(student: newStudent)
    }
    
    private mutating func addStudent(student: Student){
        let studentVM = StudentVM(student)
        studentVMs?.append(studentVM)
    }
    
    private func getNewStudentID()->Int{
        return studentVMs?.count ?? 1
    }
}
