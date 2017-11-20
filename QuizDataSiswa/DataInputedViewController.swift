//
//  DataInputedViewController.swift
//  QuizDataSiswa
//
//  Created by Macbook pro on 26/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class DataInputedViewController: UIViewController {
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
    @IBOutlet weak var labelClass: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    var username = ""
    var password = ""
    var email = ""
    var school = ""
    var classs = ""
    var age = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelUsername.text = "Your Username is " + username
        labelEmail.text = "Your Email is " + password
        labelPassword.text = "Your Password is " + email
        labelSchool.text = "Your School is " + school
        labelClass.text = "Your Class is " + classs
        labelAge.text = "Your Age is " + age + " Years Old"

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
