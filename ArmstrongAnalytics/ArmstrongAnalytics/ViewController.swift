//
//  ViewController.swift
//  ArmstrongAnalytics
//
//  Created by Nubio Knupp on 14/08/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numeroTextFild : UITextField!;
    @IBOutlet var resultadoTextView : UITextView!;
    
    @IBAction func Calcular(){
        let numero : Int = Int(numeroTextFild.text!)!;
        let array = Array(String(numero).characters);
        var soma = 0;
        
        for item in array {
            let num = Double(String(item))!;
            let count = Double(array.count);
            let potencia = pow(num, count);
            soma += Int(potencia);
        }
        
        if soma == numero {
            resultadoTextView.text = "O números \(numero) é Armstrong!";
        } else {
            resultadoTextView.text = "O números \(numero) não é Armstrong!";
        }
    
    }

}

