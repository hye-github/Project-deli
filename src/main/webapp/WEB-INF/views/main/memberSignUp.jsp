<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-12-11
  Time: 오후 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>일반 회원 가입</title>
</head>
<body>

<form method="post" action="/signUp">
    <h1>회원가입</h1>
    <input type="text" placeholder="이메일 주소 입력해라" name="acc_email"><br>
    <input type="text" placeholder="비밀번호 입력해라" name="acc_pw"><br>
    <input type="password" placeholder="비밀번호 동일하게 입력해라" name="acc_pw_re"><br>
    <input type="hidden" name="acc_type" value="client">
    <input type="hidden" name="acc_sns" value="normal">
    <button type="submit">가입 완료</button>

    <br>
    ---<br>
    <input type="hidden" name="acc_sns" value="kakao"><br>
    acc_token<br>
    acc_signupdate sysdate<br>
    acc_unregister Y<br>

</form>

</body>
</html>
