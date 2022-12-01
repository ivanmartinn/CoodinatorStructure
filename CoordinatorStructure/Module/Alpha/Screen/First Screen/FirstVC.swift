//
//  FirstVC.swift
//  CoordinatorStructure
//
//  Created by Ivan Martin on 01/12/2022.
//

import UIKit

class FirstVC: UIViewController, FirstView {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    func setupUI(){
        let label = UILabel()
        label.text = #file
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

