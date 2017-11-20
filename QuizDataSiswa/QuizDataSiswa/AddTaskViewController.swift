//
//  AddTaskViewController.swift
//  QuizDataSiswa
//
//  Created by SMK IDN MI on 11/20/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var etNameTAsk: UITextField!
    @IBOutlet weak var etDay: UITextField!
    @IBOutlet weak var etDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // mengecek apakah segue dg nama passData ada atau tidak
        if (segue.identifier == "passData"){
            // deklarasi kirimData sebagai destinasi segue dg nama view controller : GetDataViewController
            let kirimData = segue.destination as! YourTableViewCell
            
        }
    }
    @IBAction func btnSaveTask(_ sender: Any) {
        //deklarasi context
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //deklarasi task
        let nameTask = Task(context: context) // deklarasi nameTask sebagai konteks dari entiti task
        nameTask.name_task = etNameTAsk.text
        //mendeklarasikan bahwa name Task.name+task itu isi nya dari etNameTask.text
        if etNameTAsk.text == "" {
            // kondisi ketika kosong
            //tampilan alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task can not be empty",preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if etDay.text == "" {
            // kondisi ketika kosong
            //tampilan alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task can not be empty",preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if etDescription.text == "" {
            // kondisi ketika kosong
            //tampilan alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task can not be empty",preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
            
            
        }else{
            
            // ketika kondisi teks tan task nya tidak kosong
            // data di simpan ke core daya
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            _ = navigationController?.popViewController(animated: true)
            
            
            
            
            
            //mencetak kalau data berhasil di tambahkan
            print("Data Berhasil Disimpan")
        
    }
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}




}
