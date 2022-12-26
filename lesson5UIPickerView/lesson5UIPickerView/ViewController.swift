//
//  ViewController.swift
//  lesson5UIPickerView
//
//  Created by Karen Vardanian on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {
    

        let picker = UIDatePicker()
    
        override func viewDidLoad() {
            super.viewDidLoad()
    
            picker.center = view.center
            
            picker.datePickerMode = .countDownTimer
            
            view.addSubview(picker)
            
            var oneYear = TimeInterval()
            oneYear = 365 * 24 * 60 * 60
            let today = Date()
            let oneYearMin = today.addingTimeInterval(365 - oneYear)
            let twoYearMax = today.addingTimeInterval(2 * oneYear)
            
            picker.minimumDate = oneYearMin
            picker.maximumDate = twoYearMax
            
            picker.countDownDuration = 5 * 60
            
            
            picker.addTarget(self, action: #selector(dataPickertChange(parameter:)), for: .valueChanged)
        }
    
    
    
    
    
    @objc func dataPickertChange(parameter : UIDatePicker) {
        if parameter.isEqual(picker) {
            print(parameter.date)
        }
    }

}

//extension ViewController: UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 10
//    }
//}
//
//extension ViewController: UIPickerViewDelegate {
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let result = "row = \(row)"
//        return result
//    }
//}

