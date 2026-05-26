//
//  ViewController.swift
//  quanlysach
//
//  Created by  User on 19.05.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        view.endEditing(true)
    }

}

