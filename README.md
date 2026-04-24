# 프로젝트 명: Deli
> 목표: 빅테크 기업들이 운영하는 소비자와 식당 운영자를 연결시켜주는 배달 앱을 WebApp으로 구현.
## 프로젝트 동영상 : [Video LINK](https://youtu.be/5EBxb5GoeE8?t=0s)
[![Video LINK](http://img.youtube.com/vi/5EBxb5GoeE8/0.jpg)](https://youtu.be/5EBxb5GoeE8?t=0s)

## 프로젝트 PPT : [상세 PPT LINK](https://docs.google.com/presentation/d/1DngQwjs-pflHYoj1ez5nsczSNu60zIiD/edit?usp=sharing&ouid=111780926031687358017&rtpof=true&sd=true)

## 프로젝트 회고록 : [BLOG LINK](https://mdtodev.tistory.com/123)

# 간략소개
- 개발기간: 2022.11.29 ~ 2023.01.05
- 플랫폼: Web, WebApp
- 개발인원: 7명
### 프로젝트에 시도하고 싶었던 것
  - 프레임워크, 라이브러리 - **Java mail sender**, **Web-socket**, **Spring boot**, JPA(보류)
  - 그 외 - **도메인 형 패키지 구조**, **컨벤션
### 개발환경
- **Back-End -** JDK11, Spring Boot 2.7.6, Spring Batch, MyBatis, OracleDB(ojdbc v8), Redis
- **Front-End -** HTML5, CSS, JavaScript, jQuery, Ajax, Jsp
- **Infra -** AWS EC2(Windows), tomcat 8.5, Route 53, Cafe24(DNS)
- **API, 라이브러리 -** Kakao API(login, pay, map), Naver API(sms), Java mail sender, WebSocket, Sweetalert2, Bootstrap, Web-socket
- **협업 툴 -** Slack, Git, Github, Github Desktop, Source tree, Google sheet, Notion, Erd cloud, Discord

### 디렉토리 패키지 구조 - 도메인

domain   
&nbsp;&nbsp;ㄴ&nbsp;admin   
&nbsp;&nbsp;ㄴ&nbsp;main&nbsp;(비로그인)   
&nbsp;&nbsp;ㄴ&nbsp;member   
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;ㄴ&nbsp;myPage   
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;ㄴ&nbsp;order   
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;ㄴ&nbsp;store   
&nbsp;&nbsp;ㄴ&nbsp;owner   
global   
&nbsp;&nbsp;ㄴ&nbsp;config   
&nbsp;&nbsp;ㄴ&nbsp;entity   
&nbsp;&nbsp;ㄴ&nbsp;exception   
&nbsp;&nbsp;ㄴ&nbsp;interceptor   
&nbsp;&nbsp;ㄴ&nbsp;type   
&nbsp;&nbsp;ㄴ&nbsp;util   
