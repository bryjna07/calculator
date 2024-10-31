
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력


class Calculator {
    // 연산 클래스 추가
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) -> Double? {
    switch opp {
    // 더하기
        case "+" :
            return num1 + num2
        
    //빼기
        case "-" :
            return num1 - num2
            
    //곱하기
        case "*" :
            return num1 * num2
            
    //나누기
        case "/" :
        // 0으로 나누기 불가 -> num2 0 일 때 설정
        guard num2 != 0 else {
            print("0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
        // 나머지 연산자 추가
    case "%" :
        return num1.truncatingRemainder(dividingBy: num2)
    default:
        print("잘못된 연산자 입니다.")  // 옵셔널로 반환되기 때문에 안내멘트 작성
        return nil
       
        }
    }
}
    
//다시, 이 브랜치로 작업
//switch문과 opertor 활용해보기

let calculator = Calculator()
if let addfuntion = calculator.calculate(4, 6, "+") {
    print(addfuntion)
}

// 잘못된 연산자 테스트
let oryu = Calculator()
if let oryNamurge = oryu.calculate(5, 4, "오류") {
    print(oryu)
}

// 0으로 나눌 시 테스트
let zeroTest = Calculator()
if let zeroResult = zeroTest.calculate(5, 0, "/") {
    print(zeroResult)
}
    
// 각각의 연산 클래스 생성
class AddOperation {
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) -> Double {
        var opp = "+"
        return num1 + num2
    }
}

class SubtractOperation {
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) -> Double {
        var opp = "-"
        return num1 - num2
    }
}

class MultiplyOperation {
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) -> Double {
        var opp = "*"
        return num1 * num2
    }
}

class DivideOperation {
    func calculate(_ num1: Double, _ num2: Double, _ opp: String) -> Double? {
        guard num2 != 0 else {
            print("0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
    }
}
    // 테스트
let addTest1 = Calculator().addOperation.calculate(7, 3, "+")
print(addTest1)

if let divideTest = Calculator().divideOperation.calculate(4, 2, "/") {
    print(divideTest)
}

let test4 = Calculator().multiplyOperation.calculate(11, 2, "*")
print(test4)
