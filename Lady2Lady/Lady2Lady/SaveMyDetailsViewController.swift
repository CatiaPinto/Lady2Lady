//
//  SaveMyDetailsViewController.swift
//  Lady2Lady
//
//  Created by Catia Pinto on 19/05/2018.
//  Copyright © 2018 LadiesOfCode. All rights reserved.
//

import UIKit

class SaveMyDetailsViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextView!
    let provider = DataProvider()
    
    @IBAction func saveMyDetails(_ sender: UIButton) {
        let name = nameTextField.text!
        let email = emailTextField.text!
        let notes = notesTextField.text!
        
        var mydata = MyData(name: name, email: email, notes: notes)
        
//        print("My name is " + data.name)
//        print("My email is \(data.email)")
//        print("My email is \(data.notes)")
        
        
        provider.setMyData(mydata)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myData = provider.getMyData()
        
        nameTextField.text = myData.name
        emailTextField.text = myData.email
        notesTextField.text = myData.notes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
