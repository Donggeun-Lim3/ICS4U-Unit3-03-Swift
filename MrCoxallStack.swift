/*
This class creates an integer stack.
author  Donggeun Lim
version 1.0
since   2021-12-10
*/

class MrCoxallStack {
    enum InvalidInputError: Error {
        case invalidInput
    }

    private var stack: [Int] = []

    // This method push an integer to the stack.
    func push(pushNumber: String) {
        do {
            guard let pushNumber = Int(pushNumber) else {
                throw InvalidInputError.invalidInput
            }
            self.stack.append(pushNumber)
        } catch {
            print("\nInvalid input.")
        }
    }

    // This method returns the last integer in the stack.
    func peek() -> Int? {
        if self.stack.count == 0 {
            return nil
        }
        return self.stack[self.stack.count - 1]
    }

    // This method pops the top integer from the stack.
    func pop() -> Int? {
        if self.stack.count == 0 {
            return nil
        }
        let element = self.peek()
        self.stack.remove(at: self.stack.count - 1)
        return element
    }

    // This method prints out the list of items in the stack.
    func showStack() {
        for index in 0..<self.stack.count {
            print(self.stack[index])
        }
    }
}
