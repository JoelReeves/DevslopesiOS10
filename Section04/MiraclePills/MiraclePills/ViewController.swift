//
//  ViewController.swift
//  MiraclePills
//
//  Created by Joel Reeves on 8/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var statelabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var successImageView: UIImageView!
    
    let states = [ "AK - Alaska",
                  "AL - Alabama",
                  "AR - Arkansas",
                  "AZ - Arizona",
                  "CA - California",
                  "CO - Colorado",
                  "CT - Connecticut",
                  "DC - District of Columbia",
                  "DE - Delaware",
                  "FL - Florida",
                  "GA - Georgia",
                  "HI - Hawaii",
                  "IA - Iowa",
                  "ID - Idaho",
                  "IL - Illinois",
                  "IN - Indiana",
                  "KS - Kansas",
                  "KY - Kentucky",
                  "LA - Louisiana",
                  "MA - Massachusetts",
                  "MD - Maryland",
                  "ME - Maine",
                  "MI - Michigan",
                  "MN - Minnesota",
                  "MO - Missouri",
                  "MS - Mississippi",
                  "MT - Montana",
                  "NC - North Carolina",
                  "ND - North Dakota",
                  "NE - Nebraska",
                  "NH - New Hampshire",
                  "NJ - New Jersey",
                  "NM - New Mexico",
                  "NV - Nevada",
                  "NY - New York",
                  "OH - Ohio",
                  "OK - Oklahoma",
                  "OR - Oregon",
                  "PA - Pennsylvania",
                  "PR - Puerto Rico",
                  "RI - Rhode Island",
                  "SC - South Carolina",
                  "SD - South Dakota",
                  "TN - Tennessee",
                  "TX - Texas",
                  "UT - Utah",
                  "VA - Virginia",
                  "VI - Virgin Islands",
                  "VT - Vermont",
                  "WA - Washington",
                  "WI - Wisconsin",
                  "WV - West Virginia", 
                  "WY - Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: UIButton) {
        showStatePicker(isVisible: true)
    }
    
    @IBAction func buyNowButtonPressed(_ sender: UIButton) {
        
        if (fullNameTextField.text?.isEmpty)! || (addressTextField.text?.isEmpty)! || (cityTextField.text?.isEmpty)! || (statelabel.text?.isEmpty)! || (countryTextField.text?.isEmpty)! || (zipcodeTextField.text?.isEmpty)! {
            
            let ac = UIAlertController(title: "Error", message: "All fields must be filled in.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            ac.addAction(okAction)
            present(ac, animated: true, completion: nil)
            
        } else {
            hideAllViews(isVisible: true)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: .normal)
        showStatePicker(isVisible: false)
    }
    
    func showStatePicker(isVisible: Bool) {
        statePicker.isHidden = !isVisible
        countryLabel.isHidden = isVisible
        countryTextField.isHidden = isVisible
        zipCodeLabel.isHidden = isVisible
        zipcodeTextField.isHidden = isVisible
        buyButton.isHidden = isVisible
    }
    
    func hideAllViews(isVisible: Bool) {
        fullNameLabel.isHidden = isVisible
        fullNameTextField.isHidden = isVisible
        addressLabel.isHidden = isVisible
        addressTextField.isHidden = isVisible
        cityLabel.isHidden = isVisible
        cityTextField.isHidden = isVisible
        statelabel.isHidden = isVisible
        statePickerButton.isHidden = isVisible
        countryLabel.isHidden = isVisible
        countryTextField.isHidden = isVisible
        zipCodeLabel.isHidden = isVisible
        zipcodeTextField.isHidden = isVisible
        successImageView.isHidden = !isVisible
    }

}

