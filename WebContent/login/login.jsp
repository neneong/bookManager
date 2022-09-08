<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../menu.jsp" %>
        <style>
            form {
                background-color: #ccc;
                padding: 10px;
                margin: 0 auto;
                width: 300px;
            }

            .login_container {
                border: 3px solid #f1f1f1;
                padding: 16px;
            }

            input[type=text],
            input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;

            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                cursor: pointer;
                width: 100%;
            }

            a {
                text-decoration: none;
                color: black;
            }
        </style>

        <body>
            <h2> 양영디지털 고등학교 도서관 로그인 페이지 </h2>

            <form action="/login" method="post">
                <div class="login_container">
                    <label for=""><b>User ID</b></label>
                    <input type="text" name="id" placeholder="Enter UserID" id="">

                    <label for=""><b>Password</b></label>
                    <input type="password" name="pwd" placeholder="Enter Password" id="">
                    <input type="submit" value="Login">
                    <a href="/member/register.jsp"> 회원가입 </a>
                </div>
            </form>

      


        <%@include file="../footer.jsp" %>