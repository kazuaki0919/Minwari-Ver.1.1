//
//  ResultViewController.swift
//  Minwari
//
//  Created by 並木一晃 on 2016/01/13.
//  Copyright © 2016年 並木一晃. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel:UILabel!
        var sendresultnumber :Int!  //ViewControllerから渡された値
    
    @IBOutlet var hasuLabel:UILabel!
        var sendhasunumber :Int!   //ViewControllerから渡された値]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(sendresultnumber)
        hasuLabel.text = String(sendhasunumber)
        
//        print("11",sendresultnumber)
//        print("12",sendhasunumber)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func top(sender: UIButton){
        //ボタンが押されたら、最初の画面に戻る
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
