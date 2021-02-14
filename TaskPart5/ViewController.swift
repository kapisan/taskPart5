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

    @IBAction private func button(_ sender: UIButton) {
        guard let textFieldNum1 = Double(textField1.text!) else {
            presentAlert(message: "割られる数を入力してください")
            return
        }

        guard let textFieldNum2 = Double(textField2.text!) else {
            presentAlert(message: "割る数を入力してください")
            return
        }

        guard textFieldNum2 != 0 else {
            presentAlert(message: "割る数には、0を入力しないでください")
            return
        }

        let result = textFieldNum1 / textFieldNum2

        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 5

        label.text = formatter.string(from: NSNumber(value: result))
    }

    private func presentAlert(message: String) {
        let title = "課題5"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        present(alert, animated: true, completion: nil)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
    }
}
