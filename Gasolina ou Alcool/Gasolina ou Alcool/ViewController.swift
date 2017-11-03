//
//  ViewController.swift
//  Gasolina ou Alcool
//
//  Created by Jamilton  Damasceno on 12/07/16.
//  Copyright © 2016 Jamilton  Damasceno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBOutlet weak var precoGasolinaText: UITextField!
    @IBOutlet weak var precoAlcoolText: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: AnyObject) {
        
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var resultadoPreco: Double = 0
        
        if let resultadoAlcool = precoAlcoolText.text {
            if resultadoAlcool != "" {
                if let numeroResultado = Double(resultadoAlcool) {
                    precoAlcool = numeroResultado
                }
            }
            
        }
        
        if let resultadoGasolina = precoGasolinaText.text {
            if resultadoGasolina != "" {
                if let numeroResultado = Double(resultadoGasolina) {
                    precoGasolina = numeroResultado
                }
            }
            
        }
        
        //faz o calculo (precoAlcool / precoGasolina)
        resultadoPreco = precoAlcool / precoGasolina
        
        if resultadoPreco >= 0.7 {
            resultado.text = "Melhor utilizar Gasolina!!"
        }else{
            resultado.text = "Melhor utilizar Álcool!!"
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

