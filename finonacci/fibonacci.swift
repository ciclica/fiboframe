//
//  fibonacci.swift
//  finonacci
//
//  Created by Ciclica on 1/4/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//

import UIKit

public class Fibo: NSObject {
      var numero : Int
    
    
    // construcctor de la clase Fibo
    public init ( numero: Int ){
        self.numero = numero
    }
    
    
    // metodo que indica si el numero esta o no en la serie de fibo
    public func validaFibo()->Int{
        var esFibo : Bool
        esFibo = false
        
        var anterior,inicio,i,suma: Int
        
        i=0
        anterior = 0
        inicio = 1
        
        do {
            
            if (inicio == numero) { esFibo = true}
            suma = inicio + anterior
            inicio = anterior
            anterior = suma
            
        }while (inicio <= numero)
        
        if (esFibo == false){
                inicio = 0
        }
        
            return inicio
    }
    
    
    

    // retorna la serie de Fibonacci completa.. hasta el limite del numero ingresado
    public func serie()->String{
    var seriefibo : String
    seriefibo = ""
    
    var esFibo : Bool
    esFibo = false
        
    var anterior,inicio,i,suma: Int
        
        i=0
        anterior = 0
        inicio = 1
        
        do {
        
           
          
            suma = inicio + anterior
            inicio = anterior
            anterior = suma
            seriefibo += ",\(suma)"
            
        }while (inicio <= numero)
        
     

        return seriefibo
    }


}


