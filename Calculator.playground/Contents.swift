
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력


class Calculator {
    // Todo : 내부 구현하기
    var firstNumber: Double
    var secondNumber: Double
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    // 더하기
    func add() -> Double {
       return firstNumber + secondNumber
    }
    
    //빼기
    func subtract() -> Double {
        return firstNumber - secondNumber
    }
    
    //곱하기
    func multiply() -> Double {
        return firstNumber * secondNumber
    }
    
    //나누기
    func divide() -> Double {
        return firstNumber / secondNumber
    }
}
    
let addition = Calculator(firstNumber: 3, secondNumber: 6)
print(addition.add())

let subtraction = Calculator(firstNumber: 8, secondNumber: 4)
print(subtraction.subtract())

let multiplication = Calculator(firstNumber: 3, secondNumber: 2)
print(multiplication.multiply())

let division = Calculator(firstNumber: 6, secondNumber: 4)
print(division.divide())

//test

//branch test
// 머지 테스트







