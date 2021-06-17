import Combine

let publisher = Just(1)

publisher.sink { _ in
    // When it finish working
    print("Finish")
} receiveValue: { value in
    print(value)
}

