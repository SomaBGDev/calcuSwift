//
//  ViewController.swift
//  calcuAhoraSi
//
//  Created by mulder on 23/01/2020.
//  Copyright © 2020 mulder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modo: UISwitch!
    @IBOutlet weak var resul: UILabel!
    
    @IBOutlet weak var btAc: UIButton!
    @IBOutlet weak var btPorc: UIButton!
    @IBOutlet weak var btElev: UIButton!
    @IBOutlet weak var btMulti: UIButton!
    @IBOutlet weak var btSiete: UIButton!
    @IBOutlet weak var btOcho: UIButton!
    @IBOutlet weak var btNueve: UIButton!
    @IBOutlet weak var btDiv: UIButton!
    @IBOutlet weak var btCuatro: UIButton!
    @IBOutlet weak var btCinco: UIButton!
    
    @IBOutlet weak var btSeis: UIButton!
    @IBOutlet weak var btResta: UIButton!
    @IBOutlet weak var btUno: UIButton!
    @IBOutlet weak var btDos: UIButton!
    @IBOutlet weak var btTres: UIButton!
    @IBOutlet weak var btMas: UIButton!
    @IBOutlet weak var btCero: UIButton!
    @IBOutlet weak var btComa: UIButton!
    @IBOutlet weak var btIgual: UIButton!
    
    var porciento : Bool = false
    var res : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //funcion redondeo
        
        btAc.redondeo()
        btPorc.redondeo()
        btElev.redondeo()
        btMulti.redondeo()
        btSiete.redondeo()
        btOcho.redondeo()
        btNueve.redondeo()
        btDiv.redondeo()
        btCuatro.redondeo()
        btCinco.redondeo()
        
        btSeis.redondeo()
        btResta.redondeo()
        btUno.redondeo()
        btDos.redondeo()
        btTres.redondeo()
        btMas.redondeo()
        btCero.redondeo()
        btComa.redondeo()
        btIgual.redondeo()
        
        btAc.borde()
        btPorc.borde()
        btElev.borde()
        btMulti.borde()
        btSiete.borde()
        btOcho.borde()
        btNueve.borde()
        btDiv.borde()
        btCuatro.borde()
        btCinco.borde()
        btSeis.borde()
        btResta.borde()
        btUno.borde()
        btDos.borde()
        btTres.borde()
        btMas.borde()
        btCero.borde()
        btComa.borde()
        btIgual.borde()
        
        
    
    }
    
    @IBAction func modoOscuro(_ sender: Any) {
        if (!modo.isOn){
            view.backgroundColor = UIColor.darkGray
            
        }
        else{
            view.backgroundColor = UIColor.white
            
        }
    }


    
    @IBAction func tecla(_ sender: UIButton) {
        //dependiendo de la tecla que pulsemos hara una acion u otra
        
        //cuando pulsamos el boton salta
        sender.jump()
        
        if (sender.tag < 10){
            resul.text = resul.text! + String(sender.tag)
        }
        else{
            switch sender.tag {
            case 10:
                resul.text = ""
                porciento = false
                unblockButton()
                break;
            case 11:
                //porciento
                //obtenemos resultado hasta el momento
                res = 0.0
                let expr = NSExpression(format: resul.text!)
                res = expr.expressionValue(with: nil, context: nil) as! Double
                porciento = true
                resul.text = ""
                blockButton()
                //bloquear botones operacion
                break
            case 12:
                resul.text = resul.text! + "**"
                break
            case 13:
                resul.text = resul.text! + "*"
                break
            case 14:
                resul.text = resul.text! + "/"
                break
            case 15:
                resul.text = resul.text! + "-"
                break
            case 16:
                resul.text = resul.text! + "+"
                break
            case 17:
                //funcion
                
                if (porciento){
                    
                    var cal = Double(resul.text!)
                    
                    resul.text = String(res * (cal!/100))
                    porciento = false
                    unblockButton()
                }
                else{
                    let expr = NSExpression(format: resul.text!)
                    resul.text = String( expr.expressionValue(with: nil, context: nil) as! Double )
                }
                break
            case 18:
                resul.text = resul.text! + "."
                break

            default:""
                
                
            }
        }
        
        
    }
    
    func blockButton(){
        btMas.isEnabled = false
        btMas.isEnabled = false
        btResta.isEnabled = false
        btPorc.isEnabled = false
        btDiv.isEnabled = false
        btMulti.isEnabled = false
        btElev.isEnabled = false
        
    }
    
    func unblockButton(){
        btMas.isEnabled = true
        btMas.isEnabled = true
        btResta.isEnabled = true
        btPorc.isEnabled = true
        btDiv.isEnabled = true
        btMulti.isEnabled = true
        btElev.isEnabled = true
        
    }
    
}

