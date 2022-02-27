//
//  ViewController.swift
//  PassData
//
//  Created by muhammad hassan on 20/02/2022.
//

import UIKit

class ViewController: UIViewController, PassData{
  

    @IBOutlet weak var lblFName: UILabel!
    @IBOutlet weak var lblLName: UILabel!
    @IBOutlet weak var LblEmail: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // clicked button to fill form
    @IBAction func goToForm(_ sender: UIButton)
    {
        let SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecVC") as! SecondViewController
        SecondVC.delegate = self
        self.navigationController?.pushViewController(SecondVC, animated: true)
        
    }
    func PassData(FName: String, LName: String, Email: String) {
        lblFName.text = FName
        lblLName.text = LName
        LblEmail.text = Email
    }
    

}

