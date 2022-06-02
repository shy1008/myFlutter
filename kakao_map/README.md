# naver_map

기존 안드로이드 프로젝트에서 사용했던 naver map api를 사용하여 동일하게 적용해보려했다. 

* 참고 자료 

https://pub.dev/packages/naver_map_plugin 

https://kanoos-stu.tistory.com/65   

https://ahang.tistory.com/21    


네이버클라우드 플랫폼에 패키지 등록 → 디펜젼시 추가 → 안드로이드,ios client ID등록, 메타정보 추가 → 필요 권한 허용 → 테스트 앱 실행시 빌드에러 

```
Error running pod install
Error launching application on iPhone 12 Pro Max. 
```

* 참고 자료

https://velog.io/@kyleryu/Error-running-pod-install-Flutter       

https://thenicesj.tistory.com/30     

그래도 실패.

몇일후 보안 문제 상으로 회사계정 네이버 클라우드 플랫폼 접속 불가능 ( 패키지 등록을 할수없게됨)


------------


# 대체 방안으로 다른 지도 라이브러리 조사 = kakao map 

* 참고자료

https://pub.dev/packages/flutter_kakao_map   (플러그인이 있지만 업데이트가 늦어보인다)

https://cording-cossk3.tistory.com/208        

https://velog.io/@dlwpdlf147/Flutter%EC%97%90%EC%84%9C%EC%9D%98-kakao-map-API-%ED%99%9C%EC%9A%A9    

https://developers.kakao.com/docs/latest/ko/getting-started/sdk-android-v1    (디버그 키해시 등록 방법)

개인계정으로 카카오 개발자 페이지 에서 앱 등록하여 진행 

카카오 개발자 플랫폼에 패지키 등록 → 디펜젼시 추가 → 안드로이드 메타정보,위치 권한 허용 → 테스트 실행 

안드로이드 시뮬레이터에서 지도는 작동하나 SafeArea위젯 먹히지 않는 현상 빈번하게 발생

아이폰 시뮬레이터 작업중 


------------

android manifest.xml meta-data value값 비공개
