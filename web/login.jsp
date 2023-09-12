<%-- 
    Document   : login.jsp
    Created on : Jul 19, 2023, 1:51:10 PM
    Author     : nguye
--%>

<%@page import="Utils.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Courier New', Courier, monospace;
            }

            a {
                text-decoration: none;
            }

            span, a, h1, h2, h3, label, p{
                font-family: 'Fjalla One', sans-serif;
            }

            body {
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background: linear-gradient(#29cdd6, #6aacb0);
                overflow: hidden;
                ;
            }

            .wrapper {
                position: relative;
                width: 400px;
                height: 500px;
            }

            .form-wrapper {
                position: absolute;
                top: 0;
                left: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                width: 100%;
                height: 100%;
                background: white;
                box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            }

            .wrapper.animate-signUp .form-wrapper.sign-in {
                transform: rotate(7deg);
                animation: animateRotate .7s ease-in-out forwards;
                animation-delay: .3s;
            }

            .wrapper.animate-signIn .form-wrapper.sign-in {
                animation: animateSignIn 1.5s ease-in-out forwards;

            }

            @keyframes animateSignIn {
                0% {
                    transform: translateX(0);
                }

                50% {
                    transform: translateX(-500px);
                }

                100% {
                    transform: translateX(0) rotate(7deg);
                }
            }

            .wrapper .form-wrapper.sign-up {
                transform: rotate(7deg);
            }

            .wrapper.animate-signIn .form-wrapper.sign-up {
                animation: animateRotate .7s ease-in-out forwards;
                animation-delay: .3s;
            }

            @keyframes animateRotate {
                0% {
                    transform: rotate(7deg);
                }

                100% {
                    transform: rotate(0);
                    z-index: 1;
                }
            }

            .wrapper.animate-signUp .form-wrapper.sign-up {
                animation: animateSignUp 1.5s ease-in-out forwards;

            }

            @keyframes animateSignUp {
                0% {
                    transform: translateX(0);
                    z-index: 1;
                }

                50% {
                    transform: translateX(500px);
                }

                100% {
                    transform: translateX(0) rotate(7deg);
                }
            }

            .wrapper .form-wrapper.sign-up {
                transform: rotate(7deg);
            }

            h2 {
                font-size: 30px;
                color: #555;
                text-align: center;
            }
            
            h3{
                font-size: 1em;
                color: #555;
                text-align: center;
            }

            .input-group {
                position: relative;
                width: 320px;
                margin: 20px 0;

            }

            .input-group label {
                position: absolute;
                top: 50%;
                left: 5px;
                transform: translateY(-50%);
                font-size: 16px;
                color: #333;
                padding: 0 5px;
                pointer-events: none;
                transition: .5s;
            }

            .input-group input {
                width: 100%;
                height: 40px;
                font-size: 16px;
                color: #333;
                padding: 0 10px;
                background: transparent;
                border: 1px solid #333;
                outline: none;
                border-radius: 5px;

            }

            .input-group input:focus~label,
            .input-group input:valid~label {
                top: 0;
                font-size: 12px;
                background: #fff;
            }

            .btn {
                position: relative;
                top: 0;
                left: 0;
                width: 100%;
                height: 40px;
                background: linear-gradient(to right, #29cdd6, #4f686a);
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.4);
                font-size: 16px;
                color: #fff;
                font-weight: 500;
                cursor: pointer;
                border-radius: 5px;
                border: none;
                outline: none;
            }

            .sign-link {
                font-size: 14px;
                text-align: center;
                margin: 25px 0;

            }

            .sign-link p {
                color: #29cdd6;
                text-decoration: none;
                font-weight: 600;
            }

            .sign-link p a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
            }
        %>
        <div class="wrapper">
            <div class="form-wrapper sign-up">
                <form action="MainController" method="POST">
                    <h2>Sign Up</h2>
                    <div class="input-group">
                        <input type="text" name="userID" required="">
                        <label for="">User ID</label>
                        <%=userError.getUserID()%>
                    </div>
                    <div class="input-group">
                        <input type="text" name="fullName" required="">
                        <label for="">Full Name</label>
                        <%= userError.getFullName()%>
                    </div>
                    <div class="input-group">
                        <input type="password" name="password" required="">
                        <label for="">Password</label>
                    </div>
                    <div class="input-group">
                        <input type="password" name="confirm" required="">
                        <label for="">Confirm Password</label>
                        <%= userError.getConfirm()%>
                    </div>
                    <button type="submit" class="btn" name="action" value="Create">Create</button>
                    <div class="sign-link">
                        <p>Already have an account ? <a href="#" class="signIn-link">Login</a></p>
                    </div>
                </form>
            </div>

            <div class="form-wrapper sign-in">
                <form action="MainController" method="POST">
                    <h2>Login</h2>
                    <div class="input-group">
                        <input type="text" name="userID" required="">
                        <label for="">User ID</label>
                    </div>
                    <div class="input-group">
                        <input type="password" name="password" required="">
                        <label for="">Password</label>
                    </div>
                    <button type="submit" class="btn" name="action" value="Login">Login</button>
                    <div class="sign-link">
                        <p>Don't have an account ? <a href="#" class="signUp-link">Sign Up</a></p>
                    </div>
                    <% String error = (String) request.getAttribute("ERROR");
                        if (error == null) {
                            error = "";
                        }%>
                    <h3><%=error%></h3>
                </form>
            </div>
        </div>
        <script>
            const wrapper = document.querySelector('.wrapper');
            const signUpLink = document.querySelector('.signUp-link');
            const signInLink = document.querySelector('.signIn-link');

            signUpLink.addEventListener('click', () => {
                wrapper.classList.add('animate-signIn');
                wrapper.classList.remove('animate-signUp');
            });
            signInLink.addEventListener('click', () => {
                wrapper.classList.add('animate-signUp');
                wrapper.classList.remove('animate-signIn');
            });
            var password = document.getElementById("password")
                    , confirm_password = document.getElementById("confirm_password");

            function validatePassword() {
                if (password.value != confirm_password.value) {
                    confirm_password.setCustomValidity("Passwords Don't Match");
                } else {
                    confirm_password.setCustomValidity('');
                }
            }

            password.onchange = validatePassword;
            confirm_password.onkeyup = validatePassword;
        </script>
    </body>
</html>