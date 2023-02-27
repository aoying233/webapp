<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">

    <head>
        <meta charset="utf-8">
        <title>登录页面</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

    </head>

    <body>
        <div class="header">
            <div class="container">  
                <div class="row"> 
                    <div class="login logo span4">
                        <h1><a href="Register.jsp">去注册<span class="red">.</span></a></h1>
                    </div>
                </div>
            </div>
        </div>
       
            <div class="row">
                <div class="login span6" id="login">
                    <form name="myForm" action="LoginServlet" method="POST">
                        <h2>用户 <span class="red"><strong>登录</strong></span></h2>
                        <label for="name">用户名</label>
                        <input type="text" id="loginUser" name="name" >
                        <label for="password">密码</label>
                        <input type="password" id="loginPsw" name="password" placeholder="choose a password...">
                        <button type="submit" >登录</button>
                    </form>
                </div>
            </div>
       

        
    </body>

</html>
