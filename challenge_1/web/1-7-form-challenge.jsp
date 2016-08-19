<%-- 
    Document   : 1-7-form-challenge.jsp
    Created on : 2016/08/19, 10:53:22
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div>
            <form method="get" action="1-7challenge.jsp">
                <p>
                合計金額：<input type="number" name="total">
                </p>
                <p>
                商品の個数：<input type="number" name="num">
                </p>
                <p>
                 商品の種類：<select name="type">
                    <option value="1">雑貨</option>
                    <option value="2">生鮮食品</option>
                    <option value="3">その他</option>
                 </select>
                </p>
                <p>
                <input type="submit" value="送信">
                </p>
            </form>
        </div>
    </body>
</html>
