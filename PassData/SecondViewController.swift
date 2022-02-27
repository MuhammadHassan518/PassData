//
//  SecondViewController.swift
//  PassData
//
//  Created by muhammad hassan on 20/02/2022.
//

import UIKit

protocol PassData {
    func PassData (FName:String, LName:String, Email:String)
}
class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtFName: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    var delegate:PassData!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func SaveBtnClicked(_ sender: UIButton)
    {
        delegate.PassData(FName: txtFName.text!, LName: txtLName.text!, Email: txtEmail.text!)
    }
    
}
