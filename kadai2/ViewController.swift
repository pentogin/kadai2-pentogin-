//
//  ViewController.swift
//  kadai2
//
//  Created by 小竹啓太 on 2021/06/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  private weak var textField1: UITextField!
    @IBOutlet  private weak var textField2: UITextField!
    @IBOutlet  private weak var segmentedControl: UISegmentedControl!
    @IBOutlet  private weak var label: UILabel!
    
    @IBAction func tapButton(_ sender: Any) {
        
    //textField1,2のstring型を数値型に変換する
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
    
    //segmentedControlを使って計算し、計算結果をlabelに表示する
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let result = number1 + number2
            label.text = "\(result)"
        case 1:
            let result = number1 - number2
            label.text = "\(result)"
        case 2:
            let result = number1 * number2
            label.text = "\(result)"
    //割り切れない場合のエラー対策としてguardを使う
        case 3:
            guard number2 != 0  else {
                label.text = "割る数には０以外を入力してください"
                return
            }
            let result = number1 / number2
            label.text = "\(result)"
        default:
            return
        }
    }
}
