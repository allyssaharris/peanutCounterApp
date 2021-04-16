//
//  ViewController.swift
//  PeanutCounterApp
//
//  Created by Allyssa Harris on 4/12/21.
//  Copyright © 2021 Allyssa Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var count: Int = 0 {
        didSet {
            counterLabel.text = "\(count)"
        }
    }
    
    let minusButton: UIButton = {
        let button = UIButton
        button.setTitle("Eat Peanut", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Cochin-Bold", size: 14)
        button.layer.cornerRadius = 20
        button.addTarget (self, action: selector(minusButtonTapped), for: .touchUpInside)
        
        return button
    }
 
    @IBOutlet var counterLabel: UILabel!
    @IBOutlet var addButton: UIButton!
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
setUpView()
    }
    func setUpView(){
        view.addSubview(minusButton)
    counterLabel.textAlignment = .center
        counterLabel.textColor = .blue
        counterLabel.font = UIFont (name: "AppleHelveticaNeue", size: 18)
        
        addButton.backgroundColor = .brown
        addButton.setTitle("Add Peanut", for: .normal)
        addButton.tintColor = .white
        
}
    @IBAction func addButtonTapped (sender: UIButton){
        count += 1
    }
    @objc func minusButtonTapped () { count -= 1}
}

