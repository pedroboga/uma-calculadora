//
//  ViewController.swift
//  UmaCalculadora
//
//  Created by Pedro Boga on 06/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var total: Int = 0
    var operacao: String = ""
    var contaNova: Bool = false
    
    @IBOutlet weak var labelResultado: UILabel!
    @IBAction func btnCalc(_ sender: UIButton) {
        if let selecionado = sender.currentTitle {
            switch selecionado {
            case "+", "-", "x", "/", "=":
                if operacao == ""{
                    self.total = Int(labelResultado.text!)!
                } else {
                    performCalc(Int(labelResultado.text!)!, operacao)
                }
                operacao = selecionado
                contaNova = true
                labelResultado.text = String(total)
            default:
                if labelResultado.text == "0" || contaNova {
                    labelResultado.text = ""
                }
                contaNova = false
                labelResultado.text! += selecionado
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performCalc(_ valorAtual: Int, _ operacao: String){
        if operacao == "+" {
            self.total += valorAtual
        } else if operacao == "-" {
            self.total -= valorAtual
        } else if operacao == "x" {
            self.total *= valorAtual
        } else if operacao == "/" {
            self.total /= valorAtual
        }
        
    }
    
}

