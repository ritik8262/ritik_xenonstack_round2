<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <style>
        body {
            background-image: url("newbg.jpg");
            background-size: cover;
            font-family: Arial, sans-serif;
            color: darkslategrey;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px;
        }
        
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        
        .logo {
            font-size: 36px;
            font-weight: bold;
            color: whitesmoke;
            text-decoration: none;
        }
        
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-left: auto;
            width: 40%;
        }
        
        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-between;
        }
        
        li {
            margin: 0 10px;
        }
        
        a {
            display: inline-block;
            background-color: darkslategrey;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            color: #fff;
            text-decoration: none;
        }
        
        a:hover {
            background-color: #005cb9;
        }
        
        .logout {
            background-color: whitesmoke;
            color: black;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-left: 20px;
            font-size: 18px;
        }
        
        .logout:hover {
            background-color: #005cb9;
        }
        
        .contact {
            background-color: #383838;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
        }
        
        .contact:hover {
            background-color: #005cb9;
        }
        
        @media screen and (max-width: 768px) {
            .container {
                padding: 20px;
            }
            
            header {
                flex-direction: column;
            }
            
            nav {
                width: 100%;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <a href="#" class="logo">My Website</a>
            <nav>
                <ul>
                    <li><a href="page1.jsp" class="page-link">Page 1</a></li>
                    <li><a href="page2.jsp" class="page-link">Page 2</a></li>
                    <li><a href="page3.jsp" class="page-link">Page 3</a></li>
                    <li><a href="register.jsp" class="page-link">Contact Us</a></li>
</ul>
<a href="login.jsp" class="logout">Logout</a>
</nav>
</header>
<h1>Welcome to My Website</h1>
<p>This is a demo website. We hope you enjoy your visit!</p>
</div>

</body>
</html>
