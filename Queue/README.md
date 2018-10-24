# QUEUE
* 먼저 입력된 데이터가 먼저 출력 *FIFO(First in First out)*
* 화장실에서 먼저 줄선사람이 먼저 사로에 들어간다
 
## 구현방법
* 제너릭으로 구현
* enqueue(), dequeue(), peek(), isEmpty(), isFull(), clear()

## 메모
* MutableCollection protocol을 구현하는 부분에서 *Error* 원인은 다음기회에 찾아보자
* 프로토콜에 익숙해지자 

## Protocol 
* MutableCollection  
- 이 프로토콜을 추가하면 서브스크립트 문법을 통해 큐의 값을 설정하거나 가져올수 있다. 서브스크립트 문법을 통해 사용자가 인덱스 값을 특정할 수 있으므로 checkIndex() 메소드를 이용해서 해당 인덱스 값의 데이터인지 확인 

# Sample

// ArrayLiteral   
var q1: Queue<Int> = [1, 2, 3, 4, 5]

// q1에서 가져온 SequenceType을 받는 초기화 메소드를 이용해서 새로운 큐를 생성  
var q2 = Queue<Int>(q1)  

let q1x = q1.dequeue()  

q2.enqueue(55)  
// q2 = [1, 2, 3, 4, 5, 55]  

// For..in은 SequenceType 프로토콜을 사용  
for el in q1 {  
   print(el)  
}
