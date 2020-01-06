//
//  InterfaceController.swift
//  piedraPapelTijera WatchKit Extension
//
//  Created by Armando Carrillo on 22/12/19.
//  Copyright © 2019 Armando Carrillo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var question: WKInterfaceImage!
    @IBOutlet var answers: WKInterfaceGroup!
    @IBOutlet var rock: WKInterfaceButton!
    @IBOutlet var paper: WKInterfaceButton!
    @IBOutlet var scissors: WKInterfaceButton!
    
    @IBOutlet var levelCounter: WKInterfaceLabel!
    @IBOutlet var timer: WKInterfaceTimer!
    
    var allMoves = ["rock", "paper", "scissors"]
    var shouldWin = true
    var level = 1
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        rock.setBackgroundImage(UIImage(named: "rock")) //en el boton rock fija de fondo la imagen que esta en los assets llamada rock
        paper.setBackgroundImage(UIImage(named: "paper")) //en el boton paper fija de fondo la imagen que esta en los assets llamada paper
        scissors.setBackgroundImage(UIImage(named: "scissors"))//en el boton scissors fija de fondo la imagen que esta en los assets llamada scissors
        timer.start()// el timer inicia con el metodo start
        newLevel()//ejecuta la funcion newlevel
    }
    func newLevel(){
    levelCounter.setText("\(level)/20")//en el label levelCounter poner el texto "nivel"/20
    if Bool.random() {//booleano aleatorio
    setTitle("Win!")//fija el titulo win
    shouldWin = true  //fijar el valor true a shouldWin
    } else {
    setTitle("Lose!") //fija el texto losee
    shouldWin = false //fija valor false a shouldWin
    }
    allMoves.shuffle()//metodo definido en swift para hacer un aleatorio de nuestro arreglo
    question.setImage(UIImage(named: allMoves[0]))//en el interfaceimage - question- fija la imagen que vino del aleatorio del arreglo allMoves
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func rockTapped() {
    }
    @IBAction func paperTapped() {
    }
    @IBAction func scissorsTapped() {
    }
    
}
