<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Fitners Login</title>
    <link rel="stylesheet" href="/resources/login/style.css">
</head>
<body>
<div class="wrap">
    <div class="form-wrap">
        <div class="button-wrap">
            <div id="btn"></div>
            <button type="button" class="togglebtn" id="moveLogin" style="color: white" onclick="login()">LOG IN</button>
            <button type="button" class="togglebtn" id="moveRegister" onclick="register()">SIGN IN</button>
        </div>
        <div class="" style="text-align: center">
            <img src="/resources/images/fitnerslogo.png" style="height: 16%">
        </div>
        <form id="login" action="/login" method="post" class="input-group">
            <input type="text" class="input-field" placeholder="Enter User ID" name="username" required>
            <input type="password" class="input-field" placeholder="Enter Password" name="password" required>
            <input type="checkbox" class="checkbox" name="remember-me"><span>자동로그인</span>
            <button class="submit">Login</button>
        </form>
        <form id="register" action="/signin" method="post" class="input-group">
            <input type="text" class="input-field" placeholder="Enter User ID" name="mid" required>
            <input type="password" class="input-field" placeholder="Enter Password" name="mpassword" required>
            <input type="text" class="input-field" placeholder="Enter name" name="mname" required>
            <input type="email" class="input-field" placeholder="Enter Email" name="memail" required>
            <input type="checkbox" class="checkbox"><span>회원 가입에 동의합니다</span>
            <button class="submit">SIGN IN</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>
    var loginBtn = document.getElementById("login");
    var registerBtn = document.getElementById("register");
    var moveBtn = document.getElementById("btn");
    var moveLogin = document.getElementById("moveLogin")
    var moveRegister = document.getElementById("moveRegister")


    function login(){
        loginBtn.style.left = "50px";
        registerBtn.style.left = "450px";
        moveBtn.style.left = "0";
        moveLogin.style.color = "white"
        moveRegister.style.color = "black"
    }

    function register(){
        loginBtn.style.left = "-400px";
        registerBtn.style.left = "50px";
        moveBtn.style.left = "110px";
        moveLogin.style.color = "black"
        moveRegister.style.color = "white"
    }
</script>
</body>
</html>