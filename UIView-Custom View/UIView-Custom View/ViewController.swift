//
//  ViewController.swift
//  UIView-Custom View
//
//  Created by HaND on 8/15/19.
//  Copyright © 2019 viviangood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var alert1:UIAlertController!
    var alert:UIAlertController!
    var alert2:UIAlertController!
    let btOk:UIAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var lastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func isValidEmail(emailID:String) -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailID)
    }
    @IBAction func validEmail(_ sender: Any) {
        if isValidEmail(emailID: email.text!) == false{
            alert = UIAlertController(title: "Thông báo", message: "Email sai định dạng", preferredStyle: .alert)
            alert.addAction(btOk)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func submit(_ sender: Any) {
        alert1 = UIAlertController(title: "Thông báo", message: "Chưa nhập đủ đầu vào", preferredStyle: .alert)
        if firstName.text?.characters.count == 0 || lastName.text?.characters.count == 0 || email.text?.characters.count == 0 || phoneNumber.text?.characters.count == 0 {
            alert1 = UIAlertController(title: "Thông báo", message: "Chưa nhập đủ dữ liệu", preferredStyle: .alert)
            alert1.addAction(btOk)
            present(alert1, animated: true, completion: nil)
        }
        else{
            alert2 = UIAlertController(title: "Đăng ký thành công", message: "Name: " + lastName.text! + " " + firstName.text! + "\n" + "Email: " + email.text! + "\n" + "Phone number: " + phoneNumber.text!, preferredStyle: .alert)
            present(alert2, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

