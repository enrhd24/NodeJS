import http from "k6/http"

export const options = {
    vus : 100,
    duration : "10s",
};
// 유저 100명이 10초동안 계속 요청을 보내는 설정

export default function(){
    http.get("https://localhost:8000");
}
// 성능 테스트 시 실행되는 함수