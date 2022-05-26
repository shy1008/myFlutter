# splash

https://docs.flutter.dev/development/ui/advanced/splash-screen#android-launch-screen  

공식문서에서 가이드해주는 splash 구현 방법인데 android & ios에서 각각 이미지 파일을 추가 및 셋팅해주는 방법이고 공수가 많이 드는 작업이다.   

https://pub.dev/packages/flutter_native_splash  

그래서 더 간단한 방법으로 할수있게 공식적으로 패키지 라이브러리를 제공해준게 있다. = flutter_native_splash 방법   


1. dependencies 추가
2. flutter_native_splash.yaml 작성 
3. flutter pub run flutter_native_splash:create 패키지 명령어 실행
4. flutter pub run flutter_native_splash:remove (이미지 바뀌면 삭제 후 다시 실행)
5. example 소스 참조 
