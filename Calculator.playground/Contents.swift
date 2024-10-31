
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력


class Calculator {
     // Todo : 내부 구현하기
    var num1: Double
    var num2: Double
    var opp: String
    
    init(_ num1: Double, _ num2: Double, _ opp: String) {
        self.num1 = num1
        self.num2 = num2
        self.opp = opp
    }
    
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
        print("잘못된 연산자 입니다.")
        return nil
       
        }
    }
}
    
//다시, 이 브랜치로 작업
//switch문과 opertor 활용해보기

//let calculator = Calculator(num1: 6, num2: 4, opp: "+")
//if let calculator = calculator.calculate(opp: "+", num1: 6, num2: 4) {
//    print(calculator)
//}
//let testNumber = Calculator(num1: 4, num2: 0, opp: "/")
//if let testNumber = testNumber.calculate(opp: "/", num1: 4, num2: 0) {
//    print(testNumber)
//}
let calculator = Calculator(4, 6, "+")
if let addfuntion = calculator.calculate(4, 6, "+") {
    print(addfuntion)
}
