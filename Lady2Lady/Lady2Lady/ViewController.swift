//
//  ViewController.swift
//  Lady2Lady
//
//  Created by Catia Pinto on 19/05/2018.
//  Copyright © 2018 LadiesOfCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func saveMyDetails(_ sender: UIButton) {
        let saveMyDetailsStoryboard = UIStoryboard(name: "SaveMyDetails", bundle: nil)
        let saveMyDetailsViewController = saveMyDetailsStoryboard.instantiateViewController(withIdentifier: "SaveMyDetails")
        
        self.navigationController?.pushViewController(saveMyDetailsViewController, animated: true)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

