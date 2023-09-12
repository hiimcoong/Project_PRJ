<%-- 
    Document   : home.jsp
    Created on : Jul 19, 2023, 2:50:15 PM
    Author     : nguye
--%>

<%@page import="Utils.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Teko:wght@400;500;700&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap');
            body {
                margin: 0px;
                padding: 0px;
            }

            li {
                list-style-type: none;
            }

            a{
                text-decoration: none;
                color: #32a2a8;
            }

            span, a, h1, h2, h3, label{
                font-family: 'Fjalla One', sans-serif;
            }

            .left-layout {
                position: fixed;
                width: 20%;
                float: left;
                height: 100vw;
            }

            .left-layout .menu {
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: flex-start;
                align-items: center;
            }

            .left-layout .menu ul {
                width: 80%;
                padding: 0;
                padding-left: 1em;
                display: flex;
                flex-direction: column;
                text-align: center;
                gap: 36px;
                font-size: 2em;
                color: #32a2a8;
            }

            .left-layout .menu li{
                display: flex;
                justify-content: flex-start;
            }

            .menu svg {
                width: 1em;
            }

            .menu .home {

                border-radius: 5px;
                color: #23a9b0;
                padding: 10px;
                background-color: #b8e3e6c2;


            }

            .right-layout {
                height: auto;
                width: 80%;
                float: right;

            }

            .nav-bar {
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: space-between;
                padding: 20px;
                position: fixed;
                height: 4rem;
                width: 78%;
                background-color: white;
            }

            .nav-bar .user {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .nav-bar .user span {
                font-size: 2em;
            }

            .search input {
                padding: 10px;
                font-size: 1.2em;
                border-radius: 5px;
                border: none;
                outline: none;
                background-color: #b8e3e6c2;
            }


            .banner {
                margin-top: 7rem;
                padding: 0 5rem;
                height: 25%;
            }

            .banner img {
                width: 100%;
                height: 100%;
                border-radius: 25px;
                object-fit: cover;
            }

            .section-header {
                padding: 2em;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .section-header a {
                font-size: 2rem;
                color: #32a2a8;
            }

            .product-list {
                display: flex;
                justify-content: flex-start;
                align-items: center;
                margin-left: 5rem;
                gap: 2rem;
                flex-wrap: wrap;
                width: 100%;
            }

            .product-list img {
                width: 50%;
                height: 50%;
                object-fit: contain;
            }

            .product {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
                max-width: 25%;
            }

            .product h3 {
                margin: 1rem;

            }
        </style>
    </head>
    <body>
        <div class="left-layout ">
            <div class="menu">
                <div class="logo">
                    <h1 style="font-family: 'Teko', sans-serif; font-size: 3em">
                        GGGears
                    </h1>
                </div>
                <ul>
                    <li class="home">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                        <path
                            d="M11.47 3.84a.75.75 0 011.06 0l8.69 8.69a.75.75 0 101.06-1.06l-8.689-8.69a2.25 2.25 0 00-3.182 0l-8.69 8.69a.75.75 0 001.061 1.06l8.69-8.69z" />
                        <path
                            d="M12 5.432l8.159 8.159c.03.03.06.058.091.086v6.198c0 1.035-.84 1.875-1.875 1.875H15a.75.75 0 01-.75-.75v-4.5a.75.75 0 00-.75-.75h-3a.75.75 0 00-.75.75V21a.75.75 0 01-.75.75H5.625a1.875 1.875 0 01-1.875-1.875v-6.198a2.29 2.29 0 00.091-.086L12 5.43z" />
                        </svg>
                        <a href="home.jsp">Home</a>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                        <path fill-rule="evenodd"
                              d="M7.5 6a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM3.751 20.105a8.25 8.25 0 0116.498 0 .75.75 0 01-.437.695A18.683 18.683 0 0112 22.5c-2.786 0-5.433-.608-7.812-1.7a.75.75 0 01-.437-.695z"
                              clip-rule="evenodd" />
                        </svg>
                        <a href="profile.jsp">Profile</a>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                        <path fill-rule="evenodd"
                              d="M7.5 6v.75H5.513c-.96 0-1.764.724-1.865 1.679l-1.263 12A1.875 1.875 0 004.25 22.5h15.5a1.875 1.875 0 001.865-2.071l-1.263-12a1.875 1.875 0 00-1.865-1.679H16.5V6a4.5 4.5 0 10-9 0zM12 3a3 3 0 00-3 3v.75h6V6a3 3 0 00-3-3zm-3 8.25a3 3 0 106 0v-.75a.75.75 0 011.5 0v.75a4.5 4.5 0 11-9 0v-.75a.75.75 0 011.5 0v.75z"
                              clip-rule="evenodd" />
                        </svg>
                        <a href="MainController?action=GetList">Shop</a>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                        <path
                            d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z" />
                        </svg>
                        <a href="MainController?action=GetCart">My Cart</a>

                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                        <path fill-rule="evenodd"
                              d="M7.5 3.75A1.5 1.5 0 006 5.25v13.5a1.5 1.5 0 001.5 1.5h6a1.5 1.5 0 001.5-1.5V15a.75.75 0 011.5 0v3.75a3 3 0 01-3 3h-6a3 3 0 01-3-3V5.25a3 3 0 013-3h6a3 3 0 013 3V9A.75.75 0 0115 9V5.25a1.5 1.5 0 00-1.5-1.5h-6zm5.03 4.72a.75.75 0 010 1.06l-1.72 1.72h10.94a.75.75 0 010 1.5H10.81l1.72 1.72a.75.75 0 11-1.06 1.06l-3-3a.75.75 0 010-1.06l3-3a.75.75 0 011.06 0z"
                              clip-rule="evenodd" />
                        </svg>
                        <a href="MainController?action=Logout">Log out</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="right-layout">
            <div class="nav-bar">
                <div class="user">
                    <%
                        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

                    %>
                    <svg style="width: 3em;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"
                         class="w-6 h-6">
                    <path fill-rule="evenodd"
                          d="M18.685 19.097A9.723 9.723 0 0021.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 003.065 7.097A9.716 9.716 0 0012 21.75a9.716 9.716 0 006.685-2.653zm-12.54-1.285A7.486 7.486 0 0112 15a7.486 7.486 0 015.855 2.812A8.224 8.224 0 0112 20.25a8.224 8.224 0 01-5.855-2.438zM15.75 9a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0z"
                          clip-rule="evenodd" />
                    </svg>
                    <span><%= loginUser.getFullName()%></span>
                </div>
                <div class="search">
                    <form action="MainController" method="POST">
                        <div class="inputbox">
                            <input type="text" name="info" required="" placeholder="Search"/>
                            <input type="submit" name="action" value="Search"/>
                        </div>
                    </form>
                </div>
            </div>
            <div class="banner">
                <img src="img/melanie-these-P_L0byMESQc-unsplash.jpg" alt="">
            </div>
            <div class="section">
                <div class="section-header">
                    <h1>
                        Our Products
                    </h1>
                    <a href="MainController?action=GetList">See All</a>
                </div>
                <div class="product-list">
                    <div class="product">
                        <img src="img/product-controller.jpg" alt="">
                        <h2>PS5 Controller</h2>
                        <h3>500</h3>
                    </div>
                    <div class="product">
                        <img src="img/product-ps5.jpg" alt="">
                        <h2>PS5</h2>
                        <h3>1000</h3>
                    </div>
                    <div class="product">
                        <img src="img/product-cd1.jpg" alt="">
                        <h2>CD</h2>
                        <h3>50</h3>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
