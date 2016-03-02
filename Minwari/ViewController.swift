//
//  ViewController.swift
//  Minwari
//
//  Created by 並木一晃 on 2015/12/29.
//  Copyright © 2015年 並木一晃. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var moneyTextField: UITextField!
    var inputmoney :String!   //TextFieldの値
    var moneynumber :Int!   //Int型に変換した値
 
    @IBOutlet var peopleTextField: UITextField!
    var inputpeople :String!   //TextFieldの値
    var peoplenumber :Int!   //Int型に変換した値
    
    var to_on :Bool!   //TaniSwitchでオンだった時の値
    
    var oneresultnumber :Int!  //一の位の結果
    var resultnumber :Int!   //割勘された値
    var hasunumber :Int!  //端数の値
    
    @IBOutlet weak var TaniSwich: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        moneyTextField.delegate = self
        peopleTextField.delegate = self
        
    }
    
    func TaniSwich(sender: UISwitch){
        if sender.on{
            
            print("5",moneynumber)
            print("6",peoplenumber)
            
        }
        else{
            
            print("7",moneynumber)
            print("8",peoplenumber)
            
        }
    }
    
    
    @IBAction func tapView(sender: UITapGestureRecognizer) {
        //入力終了した時キーボードを下げる
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ResultView" {
            let resultViewController = segue.destinationViewController as! ResultViewController
            inputmoney = moneyTextField.text   //TextFieldから値をインポートする
            print("1",inputmoney)
            moneynumber = Int(inputmoney)   //String型をIntに変換
            print("2",moneynumber)
            
            inputpeople = peopleTextField.text   //TextFieldから値をインポートする
            print("3",inputpeople)
            peoplenumber = Int(inputpeople)   //String型をIntに変換
            print("4",peoplenumber)
            
            
            if TaniSwich.on == true {
                //SwichがONの時の動作
                resultnumber = moneynumber / peoplenumber
                hasunumber = moneynumber % peoplenumber
                
            }else{
                //Swichがオフの時の動作
                oneresultnumber = moneynumber / peoplenumber
                resultnumber = oneresultnumber - oneresultnumber % 10
                hasunumber = moneynumber - resultnumber * peoplenumber
            }
        
            resultViewController.sendresultnumber = self.resultnumber   //ResultViewControllerに値を渡す
            resultViewController.sendhasunumber = self.hasunumber   //ResultViewControllerに値を渡す
            
        }
        
    }

}
