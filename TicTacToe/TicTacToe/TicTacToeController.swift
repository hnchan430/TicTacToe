//
//  TicTacToeController.swift
//  TicTacToe
//
//  Created by Edward Chen on 8/16/15.
//  Copyright (c) 2015 Angela. All rights reserved.
//

import UIKit

class TicTacToeController: UIViewController {
    var ttt = TicTacToe();
    
    @IBOutlet weak var board_0_0: UIButton!
    @IBOutlet weak var board_0_1: UIButton!
    @IBOutlet weak var board_0_2: UIButton!
    @IBOutlet weak var board_1_0: UIButton!
    @IBOutlet weak var board_1_1: UIButton!
    @IBOutlet weak var board_1_2: UIButton!
    @IBOutlet weak var board_2_0: UIButton!
    @IBOutlet weak var board_2_1: UIButton!
    @IBOutlet weak var board_2_2: UIButton!
    
    @IBOutlet weak var game_message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        board_0_0.setTitle(SYMBOL.N.description, forState: .Normal);
        board_0_1.setTitle(SYMBOL.N.description, forState: .Normal);
        board_0_2.setTitle(SYMBOL.N.description, forState: .Normal);
        board_0_2.setTitle(SYMBOL.N.description, forState: .Normal);
        board_1_0.setTitle(SYMBOL.N.description, forState: .Normal);
        board_1_1.setTitle(SYMBOL.N.description, forState: .Normal);
        board_1_2.setTitle(SYMBOL.N.description, forState: .Normal);
        board_2_0.setTitle(SYMBOL.N.description, forState: .Normal);
        board_2_1.setTitle(SYMBOL.N.description, forState: .Normal);
        board_2_2.setTitle(SYMBOL.N.description, forState: .Normal);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func board_0_0(sender: UIButton) {
        if (ttt.validate_input(0, col : 0)) {
            board_0_0.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(0, col : 0);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_0_1(sender: UIButton) {
        if (ttt.validate_input(0, col : 1)) {
            board_0_1.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(0, col : 1);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_0_2(sender: UIButton) {
        if (ttt.validate_input(0, col : 2)) {
            board_0_2.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(0, col : 2);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_1_0(sender: UIButton) {
        if (ttt.validate_input(1, col : 0)) {
            board_1_0.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(1, col : 0);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_1_1(sender: UIButton) {
        if (ttt.validate_input(1, col : 1)) {
            board_1_1.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(1, col : 1);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_1_2(sender: UIButton) {
        if (ttt.validate_input(1, col : 2)) {
            board_1_2.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(1, col : 2);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_2_0(sender: UIButton) {
        if (ttt.validate_input(2, col : 0)) {
            board_2_0.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(2, col : 0);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_2_1(sender: UIButton) {
        if (ttt.validate_input(2, col : 1)) {
            board_2_1.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(2, col : 1);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
    
    @IBAction func board_2_2(sender: UIButton) {
        if (ttt.validate_input(2, col : 2)) {
            board_2_2.setTitle(ttt.get_turn(), forState: .Normal);
            var message = ttt.move(2, col : 2);
            if (message != "") {
                game_message.text = message;
            }
        }
    }
}
