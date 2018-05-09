//
//  CurrencyTxtField.swift
//  windows-shopper
//
//  Created by thanhbh on 5/9/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let size: CGFloat = 20
        let lblCurrency = UILabel(frame: CGRect(x: 5, y: (frame.size.height - size) / 2, width: size, height: size))
        lblCurrency.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7992957746)
        lblCurrency.textAlignment = .center
        lblCurrency.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        lblCurrency.layer.cornerRadius = 5.0
        lblCurrency.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        lblCurrency.text = formatter.currencySymbol
        addSubview(lblCurrency)
    }
    
    fileprivate func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        //backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        borderStyle = .none
        layer.cornerRadius = 5.0
        textAlignment = .center
        font = UIFont(name: "Avenir-Medium", size: 15)
        keyboardType = .decimalPad
        enablesReturnKeyAutomatically = true
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            //textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
}
