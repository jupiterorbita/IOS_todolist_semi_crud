//
//  OtherVC.swift
//  todolist
//
//  Created by J on 7/11/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// ======== OTHER VC =========
import UIKit

class OtherVC: UIViewController {

    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    @IBAction func addItemPressed(_ sender: UIButton) {
        print("addItemPressed")
        performSegue(withIdentifier: "unwindFromOtherVC", sender: self)
    }
    
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        print("cancelPressed")
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
