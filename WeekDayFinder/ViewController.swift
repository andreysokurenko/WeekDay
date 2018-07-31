//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by MB985 on 21.06.18.
//  Copyright © 2018 MB985. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func findDayButton(_ sender: UIButton) {
        
        let calendar = Calendar.current
        
        var dayComponent = DateComponents()
        guard let day = dayTextField.text, let month = monthTextField.text, let year = yearTextField.text else {return}
        dayComponent.day = Int(day)
        dayComponent.month = Int(month)
        dayComponent.year = Int(year)
        
        guard let date = calendar.date(from: dayComponent) else {return}
        let dayFormat = DateFormatter()
        dayFormat.dateFormat = "EEEE"
        let weekday = dayFormat.string(from: date)
        
        resultLabel.text = weekday
        
        
    }

}

