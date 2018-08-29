//
//  ViewController.swift
//  imageViewer
//
//  Created by Maestro on 28/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTexto: UILabel!
    
    @IBAction func doTapPerro(sender: AnyObject) {
        
        if imgSecuencia.isAnimating(){
            
            imgSecuencia.stopAnimating()
            lblTexto.text = "Wuaf!"
            
        }else{
            
            imgSecuencia.startAnimating()
            lblTexto.text = "CONTINUA"
            
        }
        
         }
    
    @IBOutlet weak var imgSecuencia: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgSecuencia.image = UIImage(named: "Carta2_00000")
    
        var imagenes : [UIImage] = []
        imagenes.append(UIImage(named: "Carta2_00000")!)
        imagenes.append(UIImage(named: "Carta2_00001")!)
        imagenes.append(UIImage(named: "Carta2_00002")!)
        imagenes.append(UIImage(named: "Carta2_00003")!)
        imagenes.append(UIImage(named: "Carta2_00004")!)
        imagenes.append(UIImage(named: "Carta2_00005")!)
        imagenes.append(UIImage(named: "Carta2_00006")!)
        imagenes.append(UIImage(named: "Carta2_00007")!)
        
        imgSecuencia.animationImages = imagenes
        imgSecuencia.animationDuration = 1
        
        imgSecuencia.startAnimating()
        
        let miPerro = Perro()
        //miPerro.nombre = "el perro 2"
        miPerro.vidas = 2
        
        
        //Primero validamos que miPerro.nombre no sea nulo
        if miPerro.nombre != nil {
            let nombrePerro : String = miPerro.nombre!
            lblTexto.text = miPerro.nombre
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

