<%--
    Document   : Challenge2
    Created on : 2016/08/24, 15:44:26
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    //偶数、奇数判定メソッド
    String evenOdd(int num){
    if(num == 0){
        return "０です";
    }
    else if(num % 2 == 0){
        return "偶数です";
    }
    else{
        return "奇数です";
    }
}
    %>
    
<%
    int number = 5;
    String kekka = evenOdd(number);
    out.print(kekka);
%>