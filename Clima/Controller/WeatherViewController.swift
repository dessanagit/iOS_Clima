//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    // UITextFieldDelegate -> method to manage editing and validation of text in a text field object.

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Search text field reports back to the view controller.
        /// i.e: "Hey viewController, the user just start typing"
        searchTextField.delegate = self
        
        
    }


    @IBAction func searchPressed(_ sender: UIButton) {
        
        // When the editing is done, dismiss the keyboard.
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    
    // Method that asks the delegate if the text field should proccess the pressing of the return button (keyboard).
    /// i.e: "GO" button.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // When the editing is done, dismiss the keyboard.
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
}

