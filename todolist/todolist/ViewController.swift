//
//  ViewController.swift
//  todolist
//
//  Created by J on 7/11/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// =========== MAIN VIEW CONTROLLER ==============
import UIKit
import CoreData

class ViewController: UIViewController {

    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBOutlet weak var tableView: UITableView!
    var tableData: [List] = []
    
    @IBAction func unwindFromOtherVC (segue: UIStoryboardSegue){
        print("inside unwindFromOtherVC")
        //set from source
        let src = segue.source as! OtherVC
        let title = src.titleTextField.text
        let date = src.datePicker.date
        let notes = src.notesTextView.text
        print(title, notes, date)
        
        // init newEntity
        let newList = List(context: context)
        
        //save to newEntity
        newList.title = title
        newList.notes = notes
        newList.date = date
        
        // save and reload
        appDelegate.saveContext()
        tableData.append(newList)
        tableView.reloadData()
    }

    
    
    @IBAction func nextButtonPressed(_ sender: UIBarButtonItem) {
        print("nextButtonPressed")
        performSegue(withIdentifier: "toOtherVCSegue", sender: sender)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCellVC
        
        
        return cell
    }
}


