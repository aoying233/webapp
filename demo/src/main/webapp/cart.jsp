<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
</head>
    <body>
        <table border="1px">
            <tr>
                <td>名称</td>
                <td>价格</td>
                <td>数量</td>
            </tr>
        
            <c:forEach items="${list}" var="me">
                <tr>
                    <td>${me.name}</td>
                    <td>${me.price}</td>
                    <td><input></td>
                </tr>
            </c:forEach>
        
        
        </table>
        <div>
            <a href="finish.jsp">购买</a>
        </div>
    </body>
</html>