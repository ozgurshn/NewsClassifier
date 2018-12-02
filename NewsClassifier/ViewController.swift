//
//  ViewController.swift
//  NewsClassifier
//
//  Created by ozgur on 12/2/18.
//  Copyright © 2018 ozgur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var model = TRNewsClassifier()
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClick(_ sender: Any) {
        predictNewsCategory()
    }
    
    func predictNewsCategory() {
        do {
            let prediction = try model.prediction(text: textField.text ?? "")
            
            // the property names are dependent up on the structure of the model
            resultLabel.text = prediction.label
          
        } catch {
            print("Error on prediction")
        }
        
    }
}

