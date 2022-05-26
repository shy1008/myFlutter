# splash
https://velog.io/@chb1828/%EC%B2%AB-%EB%A1%9C%EB%94%A9%ED%99%94%EB%A9%B4-%EA%B5%AC%EC%B6%95%ED%95%98%EA%B8%B0Splash-%ED%99%94%EB%A9%B4


statefulWidget의 생명주기 함수 initState()를 오버라이드 하면서 Timer를 이용한 스플래쉬 화면구성 

-> Timer를 이용한 스플래쉬화면 방법인데 앱 로딩시에 흰색화면이 나타나는 문제점이 있음.   
-> 비슷한 문제점들로 인하여 해결방안으로 flutter_native_splash 패키지를 사용하는 사례들이 있음.


https://docs.flutter.dev/development/ui/advanced/splash-screen#android-launch-screen  

공식문서에서 가이드해주는 splash 구현 방법인데 android & ios에서 각각 이미지 파일을 추가 및 셋팅해주는 방법이고 공수가 많이 드는 작업이다.   

https://pub.dev/packages/flutter_native_splash  

그래서 더 간단한 방법으로 할수있게 공식적으로 패키지 라이브러리를 제공해준게 있다. = flutter_native_splash 방법   

=> 따라서 이방법을 사용하려면 다음과 같은 제약 조건이 발생한다. 
   flutter_native_splash.yaml 파일을 읽어보면 여러가지 속성들이 있지만 image 배치는 
   backgroundimage(배경이미지) 와 image(로고이미지) 로만 구성되어 구현가능하다.  

=> 비중이 높지 않은 화면이기에 많은 시간을 투자하는것보다 합성된 디자인을 요청하던지 심플한 디자인에 스플래쉬를 구현하는것이 좋아보인다. 

1. dependencies 추가
2. flutter_native_splash.yaml 작성 
3. flutter pub run flutter_native_splash:create 패키지 명령어 실행
4. flutter pub run flutter_native_splash:remove (이미지 바뀌면 삭제 후 다시 실행)
5. example 소스 참조 
