dart 문법 총정리 

<타입>
int, double, String, bool, num(인트 더블 포함)

<타입체크>
print(num1 is int ); 
print(num1.runtimeType);  

<타입추론>
var  컴파일 타임에 결정된다.
dynamic -> 거의 사용하면안된다? 런타임에 결정된다.

<상수>
final 키워드 -> 수정이 불가능, 런타임에 결정된다. 
const 키워드 - 컴파일 타임에 결정된다, 성능상에 이점을 가져갈수있다.

<null safety>
널을 대입하려면 퀘스천마크가 붙어있어야함.  null 허용  = nullable 
?가 붙은 타입이랑 안붙은 타입이랑 다르다.

<조건문,반복문> 
다른언어와 if문 구조 동일. 
다른언어와 for문 구조 동일. 
break;
continue; 사용가능

while문 그대로 사용가능 .
do while 잘사용안함 

<연산자>
str ??= “hello”;  -> str이 널이면 hello를 대입 
삼항 연산자 조건식 ? 트루면 왼쪽: 아니면 오른쪽 
케스케이드 연산자 사용방법은 점 두개를 사용한다.
var paint = Paint()
  .. color = “black”
  .. strokeCap = ‘’;

타입캐스팅 
num i = 10;
int ii = i as int;
num d = 10.5;
double dd = d as double;

<함수>
매개변수 안에 {}중괄호를 붙히면 네임드 파라미터가 된다.
람다식 에로우 펑션도 지원 , int sum(int a, int b) => a+b ;
다트는 return타입을 생략할수 있다. 추천하지 않는다. 명시적으로 하는걸 추천. 

함수가 일급클래스이다, 일급클래스는 다른 매개변수로써 함수가 전달될수 있다.  함수를 매개변수로 받을수있어서 함수 결과값을 리턴할수있다. 

calc(10, 5, callback: (a,b) => a* b));

int calc(int a, int b, {required Function(int, int) callback}) {
    return callback(a,b);
}

<List>
List<int> items = [1,2,3];

items[0]

length
isEmpty
first
last

for ( int item in items){

}

스프레드 연산자 […items, 5, …items , 6]
컬렉션안에서 if문 사용가능 

<Map>
Map<String, dynamic> john = {};
map 반복하려면 .keys , .entries , .values 

<Class >

_이것을 붙이면 private 효과
static 도 있음 
생성자 this.변수 바로 할당 가능 
최상위에 함수나 스태틱변수 사용가능 
생성자에 nullable로 하고 []로 감싸면 옵셔널이 됨.
생성자 내용에 할당을 할거면 late 로 늦은초기화 해도됨 
클래스 멤버변수에 final 키워드로 상수로 써도 무방하다. 

named construct 

<상속>
extand 자바 동일

<추상화>
abstract 자바 동일

<mixin>
다중 상속의 효과, 인스턴스화 불가능 with 키워드를 쓰고 다중상속받으면된다.  

mixin Moveable {
	int i = 0;

}

<Genric>
제네릭, 다형성

<import>
as 구문 별칭 사용

<Future>
비동기처리 async await 

<Stream>
데이터 흐름 -> listen 으로 실시간 데이터 받기 (예시 파이어베이스 스토리지)































































