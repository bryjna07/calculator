
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력


class Calculator {
     // Todo : 내부 구현하기
    var num1: Double
    var num2: Double
    var opp: String
    
    init(num1: Double, num2: Double, opp: String) {
        self.num1 = num1
        self.num2 = num2
        self.opp = opp
    }
    
    func calculate(opp: String, num1: Double, num2: Double) -> Double? {
    switch opp {
            // 더하기
        case "+" :
            //        func add() -> Double {
            return num1 + num2
            //        }
            
            //빼기
        case "-" :
            //        func subtract() -> Double {
            return num1 - num2
            //        }
            
            //곱하기
        case "*" :
            //        func multiply() -> Double {
            return num1 * num2
            //        }
            
            //나누기
        case "/" :
            //        func divide() -> Double {
            return num1 / num2
            //        }
        default:
            return nil
       
        }
    }
}
    
//다시, 이 브랜치로 작업
//switch문과 opertor 활용해보기

let calculator = Calculator(num1: 6, num2: 4, opp: "+")
if let calculator = calculator.calculate(opp: "+", num1: 6, num2: 4) {
    print(calculator)
}
