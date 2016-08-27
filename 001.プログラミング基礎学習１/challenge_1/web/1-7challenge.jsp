<%--
    Document   : challenge1-7
    Created on : 2016/08/18, 11:46:07
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String param1 = request.getParameter("total");   
    String param2 = request.getParameter("num");   
    String param3 = request.getParameter("type");

    int total = Integer.parseInt(param1);
    int num = Integer.parseInt(param2);
    int type = Integer.parseInt(param3);
    
    if (type == 1){
        out.print("商品種別は雑貨です<br>");
    } else if (type == 2){
        out.print("商品種別は生鮮食品です<br>");
    } else{
        out.print("商品種別はその他です<br>");
    }
    
    int aPrice = total / num;
    out.print("総額は" + total + "円です<br>");
    out.print("１個当たりの値段は" + aPrice + "円です<br>");
    
    if (total >= 5000){
        out.print("5000円以上購入なのでポイントは、" + total * 0.05 + "ポイントです<br>");
    } else if (total >= 3000){
        out.print("3000円以上購入なのでポイントは、" + total * 0.04 + "ポイントです<br>");
    } else {
        out.print("3000円以下なのでポイントは付きません");
    }
%>