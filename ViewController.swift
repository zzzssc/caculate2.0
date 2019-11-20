//
//  ViewController.swift
//  caculate2.0
//
//  Created by s20181106119 on 2019/11/1.
//  Copyright © 2019 s20181106119. All rights reserved.
//
//
import UIKit

class ViewController: UIViewController {

 
    var lastvalue:Double = 0.0
    var operation = ""  //当前操作符
    @IBOutlet weak var txtResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func InputNumber(_ sender: Any) {
        let cButton  = sender as! UIButton//获取当前按钮
   //检查是否包含"."
     if cButton.currentTitle! == "."
      {
        if (txtResult.text?.contains("."))!
        {
            return
        }
      }
 //非浮点数不以零开头
        if txtResult.text! == "0" && cButton.currentTitle! != "."
        {
            txtResult.text = cButton.currentTitle!
        }
        else
        {
              txtResult.text = txtResult.text!+cButton.currentTitle!
        }
     
    }
    
    @IBAction func operate(_ sender: Any) {
        var cButton = sender as! UIButton
        operation = cButton.currentTitle!
        lastvalue = Double(txtResult.text!)!
        txtResult.text = "0"
        
    }
    
    @IBAction func equal(_ sender: Any) {
        var currentvalue = Double(txtResult.text!)!
        
       switch operation {
        case "+":
            txtResult.text = "\(lastvalue+currentvalue)"
        case "-":
            txtResult.text! = "\(lastvalue-currentvalue)"
        case "*":
            txtResult.text! = "\(lastvalue*currentvalue)"
        case "/":
            txtResult.text! = "\(lastvalue/currentvalue)"
        default:
            break
        }
        
    }

    //清零
    @IBAction func clear(_ sender: Any) {
        txtResult.text = "0"
    }
    
}

