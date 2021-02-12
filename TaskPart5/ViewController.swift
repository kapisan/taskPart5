//
//  ViewController.swift
//  TaskPart5
//
//  Created by niwa  shuhei on 2021/02/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func button(_ sender: UIButton) {

        let textFieldNum1 = Double(textField1.text!)
        let textFieldNum2 = Double(textField2.text!)

        if textFieldNum1 == nil {
            print("割られる数を入力してください")
        } else if textFieldNum2 == nil {
            print("割る数を入力してください")
        } else if textFieldNum2 == 0 {
            print("割る数には、0を入力しないでください")
        } else {
            print("計算")
            let result = textFieldNum1! / textFieldNum2!
            let resultRound = round(result*100000)/100000
            label.text = String(resultRound)
            print(resultRound)
        }
    }

}

