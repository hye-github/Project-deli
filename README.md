# 프로젝트 명: Deli
> 목표: 빅테크 기업들이 운영하는 소비자와 식당 운영자를 연결시켜주는 배달 앱을 WebApp으로 구현.
## 프로젝트 동영상 : [Video LINK](https://youtu.be/5EBxb5GoeE8?t=0s)
[![Video LINK](http://img.youtube.com/vi/5EBxb5GoeE8/0.jpg)](https://youtu.be/5EBxb5GoeE8?t=0s)

## 프로젝트 PPT : [상세 PPT LINK](https://docs.google.com/presentation/d/1DngQwjs-pflHYoj1ez5nsczSNu60zIiD/edit?usp=sharing&ouid=111780926031687358017&rtpof=true&sd=true)

## 목차   
1. [소개](https://github.com/hye-github/Project-deli/blob/main/README.md#3-%EB%8B%B4%EB%8B%B9-%EA%B8%B0%EB%8A%A5)
  - 프로젝트에 시도하고 싶었던 것
  - 개발환경
  - 디렉토리 패키지 구조
2. [기획, 관리](https://github.com/hye-github/Project-deli/blob/main/README.md#3-%EB%8B%B4%EB%8B%B9-%EA%B8%B0%EB%8A%A5)
  - 일정표, 일지
  - ERD
  - 와이어 프레임
  - 플로우 차트
3. [담당 기능 소개](https://github.com/hye-github/Project-deli/blob/main/README.md#3-%EB%8B%B4%EB%8B%B9-%EA%B8%B0%EB%8A%A5)

  ---

## 1. 소개
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
   
     
## 2. 기획, 관리

### 일정표, 일지
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FZ0RBB%2FbtrWD54VdVv%2Fb7SMIk3ygK2sBkjRtCb171%2Fimg.jpg">
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fceis9p%2FbtrWCh6K6Mf%2Fhlex0zFcSD7lUumg47HqHk%2Fimg.jpg">

### ERD
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcexp3o%2FbtrWEfGnU9g%2FPdfK24b8BCSPqhqNIQnCZ1%2Fimg.jpg">

### 와이어 프레임
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbOrHTx%2FbtrWEK7hya5%2Fz7PLY7Ps6EXMvi0fOeOVKk%2Fimg.jpg">

### 플로우 차트
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FboCWL6%2FbtrWEKlViRI%2F8czBxAOfbKLFQzDQAM5yo1%2Fimg.jpg"><br>
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbPndOO%2FbtrWDPA9rhO%2FaAkO081mKEeQA1dDY2gT1k%2Fimg.jpg">

## 3. 담당 기능

### 1. 일반 회원가입
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FkPrRK%2FbtrWX5DfYgs%2FlK94K9EI8CYiKztiZ19TQ1%2Fimg.png"><br>
        1-1. 카카오 로그인 REST API 를 사용하여 카카오 로그인 가능<br>
        1-2. Naver SENS  API를 사용하여 휴대폰 번호 인증 가능<br>
        1-3. 스크립트와 Redis를 사용하여 인증번호 유효시간 설정<br>
        
### 2. 식당 리스트 검색
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fc46YO3%2FbtrWUGYqbAY%2Fqr17pj5t9S1dsycSUcmNY1%2Fimg.png"><br>
        2-1. 내가 선택한 지역 배달 범위에 위치한 식당 리스트 출력(범위계산기술지원-안지훈)<br>
        2-2. 가게명 또는 메뉴명으로 검색 가능<br>
        2-3. 필터 선택시 필터링 가능<br>
        
### 3. 배송지 선택 및 추가
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FVvEBQ%2FbtrWX4qNX1d%2FDm61WNq7E8SSOvHaTFceNk%2Fimg.png"><br>
        3-1. 기본 주소지 선택 기능 선택한 주소지 외에는 선택 주소지로 변경<br>
        3-2. 주소지 추가 기능<br>
        3-3 페이지가 아닌 모달로 jsp 파일을 제작하여 다른 페이지에서도 이식이 쉽도록 제작<br>
        
### 4. 배달원 전용 페이지(배달영수증)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbwNhyN%2FbtrWTJA80Ou%2FeP59HptfgYh8aqjT1A8n20%2Fimg.png"><br>
        4-1. 배달 영주증 출력 페이지<br>
        4-2. 배달원에게 문자 전달 후, 배달원 스스로 받은 링크에서 배달 완료 처리 가능<br>
        4-3. 이후 Redis에 저장된 페이지 주소가 삭제되어 배달 완료된 페이지는 접속 불가(고객 정보 보안 고려)<br>
        
### 5. 운영자 일별 매출 차트 출력 - 구글 chart.js 를 활용하여 최근 7일간의 매출 통계 출력
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FxLEkX%2FbtrWR7hXIEQ%2FmUaTbQ7pwMG7yTKXE2xiJK%2Fimg.png"><br>

### 6. 가게 메뉴/정보/리뷰 클릭 페이지(기능 구현 지원)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FkPrRK%2FbtrWX5DfYgs%2FlK94K9EI8CYiKztiZ19TQ1%2Fimg.png"><br>
        - include와 load 를 활용하여 한 페이지에서 클릭시 페이지 전환 없이 해당하는 영역만 load 되도록 구현<br>
          : 페이지 전환이 없기때문에 뒤로가기시 사용자 입장에서 본인이 보던 페이지로 돌아갈 수 있음<br>
          
### 7. lucy-xss-servlet-filter 적용
<br>

