//
//  ViewController.swift
//  windows-shopper
//
//  Created by thanhbh on 5/8/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var txtWage: CurrencyTxtField!
    @IBOutlet weak var txtPrice: CurrencyTxtField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btnCalculator = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
//        btnCalculator.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        btnCalculator.backgroundColor = UIColor(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        btnCalculator.setTitle("Calculator", for: .normal)
//        btnCalculator.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btnCalculator.setTitleColor(UIColor(white: 1, alpha: 1), for: .normal)
        btnCalculator.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        txtWage.inputAccessoryView = btnCalculator
        txtPrice.inputAccessoryView = btnCalculator
    }
    
    @objc private func calculate() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

