//
//  ViewController.swift
//  Test
//
//  Created by 백시훈 on 2022/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeLabel(_ sender: Any) {
        label.text = "Hello, Swift"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

