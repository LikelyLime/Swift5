//
//  ViewController.swift
//  MyAction
//
//  Created by 백시훈 on 5/27/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var hellpwLabel: UILabel!
    
    @IBAction func didTapMyButton(_ sender: Any) {
        hellpwLabel.text = "반갑습니다. 누누누구님"
    }
    
}

