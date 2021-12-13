/*
This program uses the MrCoxallStack class.
author  Donggeun Lim
version 1.0
since   2021-12-10
*/

let aStack = MrCoxallStack()
var toPop: String

while true {
    print("Enter the number to push on the stack: ", terminator: "")
    let inputString = String(readLine()!)
    if inputString.uppercased() == "END" {
        break
    }
    aStack.push(pushNumber: inputString)
    repeat {
        if aStack.peek() == nil {
            print("\nThe Stack is empty.")
            break
        }
        print("\nDo you want to pop (the top element : \(aStack.peek()!))? ",
              terminator: "")
        toPop = String(readLine()!).uppercased()
        if toPop == "Y" || toPop == "YES" {
            print("\nThe top element : \(aStack.pop()!) is popped.")
        }
    } while toPop == "Y" || toPop == "YES"
    print("")
}
print("\nThe Stack: ")
aStack.showStack()
print("\nDone.")
