//
//  QuizViewController.swift
//  LanguageQuiz
//
//  Created by Aaron Phillips on 6/1/16.
//  Copyright © 2016 Aaron Phillips. All rights reserved.
//

import Foundation

import UIKit
import AVFoundation

class QuizViewController: UIViewController, AVSpeechSynthesizerDelegate {
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var repeatPhraseButton: UIButton!
    
    var languageChoices = [Country]()
    var lastRandomLanguageID = -1
    var selectedRow = -1
    var correctButtonTag = -1
    var currentState: QuizState = .NoQuestionUpYet
    var spokenText = ""
    var bcpCode = ""
    let speechSynth = AVSpeechSynthesizer()
    
    
    
    
    
    
    
    
    
    
    @IBAction func flagButtonPressed(sender: UIButton) {
        
        if sender.tag == correctButtonTag{
            displayAlert("Correct",  messageText: "Good choice!")
        }else{
            displayAlert("Incorrect", messageText: "Nope. Try again!")
        }
    }
}