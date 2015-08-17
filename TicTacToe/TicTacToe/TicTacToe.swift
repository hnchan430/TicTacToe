//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Edward Chen on 8/16/15.
//  Copyright (c) 2015 Angela. All rights reserved.
//

import Foundation

enum SYMBOL : String, Printable {
    case X = "X"
    case O = "O"
    case N = ""
    
    var description : String {
        get {
            return self.rawValue
        }
    }
}

public class TicTacToe {

    var board = Array(count: 3, repeatedValue: Array(count:3, repeatedValue:SYMBOL.N));
    var turn = SYMBOL.X;
    var total_moves = 0;
    
    public func get_turn() -> String {
        return turn.description;
    }
    
    public func validate_input(row : Int, col : Int) -> Bool {
        assert(row <= 2 && col <= 2);
        if (board[row][col] == SYMBOL.N) {
            return true;
        } else {
            return false;
        }
    }
    
    private func check_winner(row : Int, col: Int) -> String {
        if ((row == 0 && col == 0) || (row == 1 && col == 1) || (row == 2 && col == 2)) {
            if (board[0][0] == board[1][1] && board[0][0] == board[2][2]) {
                return "Congratulations, You Won!";
            }
        }
        if ((row == 0 && col == 2) || (row == 1 && col == 1) || (row == 2 && col == 0)) {
            if (board[0][2] == board[1][1] && board[0][2] == board[2][0]) {
                return "Congratulations, You Won!";
            }
        }
        if (board[row][0] == board[row][1] && board[row][2] == board[row][0]) {
            return "Congratulations, You Won!";
        }
        if (board[0][col] == board[1][col] && board[0][col] == board[2][col]) {
            return "Congratulations, You Won!";
        }
        if (total_moves == 9) {
            return "Tie Game!";
        }
        return "";
    }
    
    public func move(row : Int, col : Int) -> String {
        total_moves++;
        board[row][col] = turn;
        turn = (turn == SYMBOL.X ? SYMBOL.O : SYMBOL.X);
        return check_winner(row, col : col);
    }
    

}