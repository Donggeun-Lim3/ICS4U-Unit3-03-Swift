/*
This class creates an integer stack.
author  Donggeun Lim
version 1.0
since   2021-12-10
*/

import Foundation

// Takes user input in a loop and permits the user to make multiple commands
// exit = end of program
let aStack = MrCoxallStack<Int>()

let allowedCommands = ["add", "pop", "show", "end"]
print("Commands : add<number> - pop - show - end"
      + "\nEnter the above commands only!")

while true {
    print("- ", terminator: "")
    let userInput = readLine()

    if userInput != nil {
        if userInput!.starts(with: allowedCommands[0]) {
            let userCommandArray = userInput!.components(separatedBy: " ")
            if let userNumber = Int(userCommandArray[1]) {
                aStack.push(pushElement: userNumber)
            } else {
                print("Invalid input!")
            }
        } else if userInput!.starts(with: allowedCommands[1]) {
            do {
                try print("Removed: \(aStack.pop())")
            } catch {
                print("The stack is empty.")
            }
        } else if userInput!.starts(with: allowedCommands[2]) {
            aStack.showStack()
        } else if userInput!.starts(with: allowedCommands[3]) {
            break
        } else {
            print("Invalid input!")
        }
    }
}

print("\nDone.")
