#### lib 사용법
        npm init
        npm install figlet
        - req : Request
        - res : Response
        - {} : KEY값을 입력하여 사용하면 더욱 간단

1. package.json : 내용을 대략적으로 확인하기 위함
2. package-lock.json : 내용을 상세하게 확인하기 위함.

- app.get('/',()=>{})
    - get : HTTP메소드
    - '/' : 라우팅
    - ()=>{} : 콜백 함수

- HTTP 메소드
    - GET - 주소창에서 데이터 전달_
    - [params,query] : 라우팅 회원 변수
    - POST - 내부적으로 body에 데이터 전달

- 라우딩(Routing)
    - /
    - /about
    - /board
    - /board/write

- 콜백 함수 : 함수(끝나고 실행할 함수)
    - 다른 코드의 인루로서 넘겨주는 실행가능한 코드
    - setTimeout(()=>{console.log("hello"),1000});

#### Node.js 벡엔드 개발
        [curl](https://curl.se/windows/)
        [k6](https://dl.k6.io/msi/)
- curl localhost:8000
- k6 run test_hello.js
- npm install express
    - npm ls