//
//  ViewController.swift
//  UmaCalculadora
//
//  Created by Pedro Boga on 06/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var total = 0
    var operacao = ""
    
    @IBOutlet weak var labelResultado: UILabel!
    @IBAction func btnCalc(_ sender: UIButton) {
        if let selecionado = sender.currentTitle {
            switch selecionado {
            case "+", "-", "x", "/":
                if operacao == ""{
                    self.total = Int(labelResultado.text!)!
                } else {
                    performCalc()
                }
                operacao = selecionado
            default:
                if labelResultado.text == "0" {
                    labelResultado.text = ""
                }
                labelResultado.text! += selecionado
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performCalc(){
        
    }
    
}

