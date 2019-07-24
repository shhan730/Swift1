import UIKit

/*
 Swift 기본문법 정리강의 필기 File
 한승훈
*/

///Variable 선언법///

    let constant: String = "차후에 변경이 불가능한 상수 let"
    var variable: String = "차후에 변경이 가능한 변수 var"

///Collection Type///

    //Array

        // 빈 Int Array 생성
        var integers: Array<Int> = Array<Int>()

        //Array 활용
        integers.append(1)
        integers.append(100)

        // 멤버 포함 여부 확인
        print(integers.contains(100))
        print(integers.contains(99))

        // 멤버 교체
        integers[0] = 99

        // 멤버 삭제
        integers.remove(at: 0)
        integers.removeLast()
        integers.removeAll()

        // 멤버 수 확인
        print(integers.count)

    //Dictionary

        // Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
        var anyDictionary: Dictionary<String, Any> = [String: Any]()

        // 키에 해당하는 값 할당
        anyDictionary["someKey"] = "value"
        anyDictionary["anotherKey"] = 100

        print(anyDictionary)

        // 키에 해당하는 값 변경
        anyDictionary["someKey"] = "dictionary"
        print(anyDictionary)

        // 키에 해당하는 값 제거
        anyDictionary.removeValue(forKey: "anotherKey")
        anyDictionary["someKey"] = nil
        print(anyDictionary)

    //Set

        // 빈 Int Set 생성
        var integerSet: Set<Int> = Set<Int>()
        integerSet.insert(1)
        integerSet.insert(100)
        integerSet.insert(99)
        integerSet.insert(99)
        integerSet.insert(99)

        print(integerSet)
        print(integerSet.contains(1))
        print(integerSet.contains(2))

        integerSet.remove(100)
        integerSet.removeFirst()

        print(integerSet.count)

        // Set는 집합 연산에 꽤 유용합니다
        let setA: Set<Int> = [1, 2, 3, 4, 5]
        let setB: Set<Int> = [3, 4, 5, 6, 7]

        // 합집합
        let union: Set<Int> = setA.union(setB)
        print(union)

        // 합집합 오름차순 정렬
        let sortedUnion: [Int] = union.sorted()
        print(sortedUnion)

        // 교집합
        let intersection: Set<Int> = setA.intersection(setB)
        print(intersection)

        // 차집합
        let subtracting: Set<Int> = setA.subtracting(setB)
        print(subtracting)


///Funtion///

    // sum이라는 이름을 가지고
    // a와 b라는 Int 타입의 매개변수를 가지며
    // Int 타입의 값을 반환하는 함수
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }

    //함수호출
    sum(a: 3, b: 5)

    // 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
    func greeting(to friend: String, from me: String) {
        print("Hello \(friend)! I'm \(me)")
    }

    // 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
    greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom

    //가변 매개변수
    func sayHelloToFriends(me: String, friends: String...) -> String {
        return "Hello \(friends)! I'm \(me)!"
    }

    //함수의 데이터 타입으로써의 활용
    var someFunction: (String, String) -> Void = greeting(to:from:)
    someFunction("eric", "yagom")
