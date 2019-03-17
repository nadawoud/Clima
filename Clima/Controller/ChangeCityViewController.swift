//
//  ChangeCityViewController.swift
//  Clima
//
//  Created by Nada Yehia Dawoud on 2/22/19.
//  Copyright © 2019 Nada Yehia Dawoud. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredNewCity(city: String)
}

class ChangeCityViewController: UIViewController {

    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        if let city = changeCityTextField.text {
            delegate?.userEnteredNewCity(city: city)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
