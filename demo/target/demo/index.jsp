<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
</head>
<body>
    <form class="box" action="./LoginServlet" method="post">
        <div id="login-box" style="width:500px;margin:0 auto;">
            <label for="name" style="font-size: 18px;">用户名：</label>
            <div style="height: 35px;width: 400px;position: relative;display: inline;">        
                <input name="name" type="text" style="height: 30px;width: 350px;padding-right: 50px;">
            </div>
            <br/><br/>
            <label for="password" style="font-size: 18px;">&nbsp; 密码：</label>
            <div style="height: 35px;width: 400px;position: relative;display: inline;">        
                <input name="password" type="text" style="height: 30px;width: 350px;padding-right: 50px;">
            </div>
            <br/><br/>
            <div style="width: 400px;float: right;">
                <a href="Register.jsp">注册</a>
            </div>
            <br/><br/>
            <div style="width: 400px;float: right;">
                <input type="submit">
                <input type="submit" value="登录" style="height:30px;width:400px;background-color:antiquewhite">
            </div>
        </div>
    </form>
</body>
</html>