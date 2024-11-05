
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력

// 에러처리를 위한 열거형 정의
enum CalculatorError: Error {
    case divideByZero
    case invalidOperator
}

// 각각의 연산 클래스 생성
class AddOperation {
    func calculate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

class SubtractOperation {
    func calculate(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

class MultiplyOperation {
    func calculate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

class DivideOperation {
    func calculate(_ num1: Double, _ num2: Double) throws -> Double {
        guard num2 != 0 else {
            throw CalculatorError.divideByZero
        }
        return num1 / num2
    }
}


class Calculator {
    // 연산 클래스 추가
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) throws -> Double {
        switch opp {
            // 더하기
        case "+" :
            return addOperation.calculate(num1, num2)
            
            //빼기
        case "-" :
            return subtractOperation.calculate(num1, num2)
            
            //곱하기
        case "*" :
            return multiplyOperation.calculate(num1, num2)
            
            //나누기
        case "/" :
            return try divideOperation.calculate(num1, num2)
            //나머지
        case "%" :
            return num1.truncatingRemainder(dividingBy: num2)
        default:
            throw CalculatorError.invalidOperator
        }
    }
}
// 예외처리 예제
    let calculator = Calculator()
    
    do {
        let result = try calculator.calculate(4, 6, "+")
        print("\(result)입니다.")
    } catch CalculatorError.divideByZero {
        print("0으로 나눌 수 없습니다.")
    } catch CalculatorError.invalidOperator {
        print("잘못된 연산자 입니다.")
    } catch {
        print("알 수 없는 에러가 발생했습니다.")
    }

// 잘못된 연산자 테스트
do {
    let invalidResult = try calculator.calculate(5, 4, "오류")
    print("Result: \(invalidResult)")
} catch CalculatorError.divideByZero {
    print("0으로 나눌 수 없습니다.")
} catch CalculatorError.invalidOperator {
    print("잘못된 연산자 입니다.")
} catch {
    print("알 수 없는 에러가 발생했습니다.")
}

// 0으로 나누기 테스트
do {
    let zeroDivisionResult = try calculator.calculate(5, 0, "/")
    print("Result: \(zeroDivisionResult)")
} catch CalculatorError.divideByZero {
    print("0으로 나눌 수 없습니다.")
} catch CalculatorError.invalidOperator {
    print("잘못된 연산자 입니다.")
} catch {
    print("알 수 없는 에러가 발생했습니다.")
}



    
