//
//  ViewController.swift
//  MVVMTesting
//
//  Created by thianluankim on 7/7/19.
//  Copyright © 2019 thianluankim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func tapSave(_ sender: UIButton) {
        studentListVM.createStudent(name:txtName.text ?? "")
        tableView.reloadData()
        txtName.text = ""
    }
    
    var studentListVM = StudentListVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupInterface()
    }

    func setupInterface(){
        tableView.delegate = self
        tableView.dataSource = self
        self.hideKeyboardWhenTappedAround()
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return (studentListVM.studentVMs?.count) ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = UITableViewCell(style: .value1, reuseIdentifier: nil)
        if let studentVM =  studentListVM.studentVMs?[indexPath.row] {
            cell.textLabel?.text = studentVM.name
            cell.textLabel?.textColor = .blue
            cell.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        }
        return cell
    }
}
