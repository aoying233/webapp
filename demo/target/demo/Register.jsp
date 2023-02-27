<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">

    <head>
        <meta chaarset="utf-8">
        <title>注册</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

    </head>

    <body>
        <div class="header">
            <div class="container">  
                    <div class="login logo span4">
                        <h1><a href="login.jsp">返回登录<span class="red">.</span></a></h1>
                    </div>
                    <div class="links span8">
                        <a class="home" href="" data-placement="left" data-original-title="主页"></a>
                        <a class="blog" href="" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="register-container container">
            <div class="row">
                <div class="login span6" id="login">
                    <form action="RegisterServlet" method="post">
                        <h2>注册 <span class="red"><strong>用户</strong></span></h2>
                        <label for="name">用户名</label>
                        <input type="text" id="name" name="name" placeholder="enter your username...">
                        <label for="password">密码</label>
                        <input type="password" id="password" name="password" placeholder="choose a password...">
                        <button type="submit">注册</button>
                    </form>
                </div>
               
            </div>
        </div>
        
    </body>

</html>
