<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>教务管理系统</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #80deea);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: absolute;
            top: 20px;
            width: calc(100% - 40px);
            max-width: 1200px;
        }
        .header img {
            height: 50px;
        }
        .header #xtmc {
            font-size: 24px;
            margin-left: 10px;
            font-weight: bold;
        }
        .container {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-form input[type="text"],
        .login-form input[type="password"],
        .login-form input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            transition: all 0.3s ease;
        }
        .login-form input[type="text"]:focus,
        .login-form input[type="password"]:focus {
            border-color: #80deea;
            box-shadow: 0 0 8px rgba(128, 222, 234, 0.2);
        }
        .login-form input[type="submit"] {
            background-color: #80deea;
            border: none;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .login-form input[type="submit"]:hover {
            background-color: #4dd0e1;
        }
        .error-message {
            color: red;
            margin-bottom: 20px;
            text-align: center;
        }
        .login-image {
            margin-bottom: 20px;
        }
        .login-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<%
    String imageUrl = "/IMG/pic1.jpg"; // 设置图片的URL
%>
<div class="header">
    <img src="/IMG/logo_jw_d.png" alt="学校Logo">
    <span id="xtmc">浙江工业大学正方教务管理系统</span>
</div>
<div class="container">
    <div class="login-image">
        <img src="<%=imageUrl%>" alt="登录图片">
    </div>
    <h2>教务管理系统</h2>
    <form class="login-form" action="<%=request.getContextPath()%>/loginChangeServlet" method="post">
        <input type="hidden" name="token" value="<%=new Date().getTime()%>"/>
        <input type="text" name="username" placeholder="请输入账号" required />
        <input type="password" name="password" placeholder="请输入密码" required/>
        <input type="submit" name="submit" value="登录" />
    </form>
    <div class="error-message">
        <%
            // 如果有错误消息，显示错误消息
            String message = (String) session.getAttribute("message");
            if (message != null) {
                out.print(message);
                session.removeAttribute("message");
            }
        %>
    </div>
</div>
</body>
</html>
