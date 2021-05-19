import SwiftUI

func doSomethingOnTheMainThread() {
    DispatchQueue.main.async {
        print("DispatchQueue")
    }
}

func sayHello() {
    print("Before")
    doSomethingOnTheMainThread()
    print("After")
}

// run
sayHello()

/*
 
 DispatchQueue waits until the whole block of function has finished
 
 Expectation:
    Before
    DispatchQueue
    After
 
 Reality
    Before
    After
    DispatchQueue
 
 */

