
// Completion handler using @escaping
// Created by Mark Rachapoom
// May 17, 2021

//MARK: - Example 1

func doSomething(completion: @escaping (String) -> Void) {
    print("do something here")
    completion("Perform completion that takes string")
    print("do something after")
}

//doSomething { string in
//    print(string)
//}

//MARK: - Example 2

enum ErrorHappens: Error {
    case error1
    case error2
    
    var debugDescription: String {
        switch self {
        case .error1:
            return "First number is greater"
        case .error2:
            return "Second number is greater"
        }
    }
}

func checkStatus(num1: Int, num2: Int, handler: @escaping (Result<Bool, ErrorHappens>) -> Void) {
    
    print("\nNumbers start comparing themselves")
    
    if (num1 > num2) {
        handler(.failure(.error1))
    } else if (num2 > num1) {
        handler(.failure(.error2))
    } else {
        handler(.success(true))
    }
}

checkStatus(num1: 2, num2: 1) { (result: Result<Bool, ErrorHappens>) in
    switch result {
    case .success:
        print("Success!🎉")
    case .failure(let error):
        print("Oh uh😩: \(error.debugDescription)")
    }
}

