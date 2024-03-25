//
//  ViewController.swift
//  pic_pra
//
//  Created by Karthiga on 8/30/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var pic: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    var a = ["1","2","3","4","5",]
    var b = ["1","2","3","4","5"]
    var c = ["2001","2002","2003","2013","2014","2015"]
    
    //a,b,c components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if component == 0
        {
            return a.count
        }
        else if component == 1
        {
        return b.count
        }
        else
        {
            return c.count

       }
       }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0
        {
            return a[row]
        }
        else if component == 1
        {
        return b[row]
        }
        else
        {
            return c[row]
            
        }
        
    }
    //display to label fun
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let date = a[pickerView.selectedRow(inComponent: 0)]
        let month = b[pickerView.selectedRow(inComponent: 1)]
        let year = c[pickerView.selectedRow(inComponent: 2)]
        
        label.text = "\(date)    \(month)     \(year)"
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

