<%-- 
    Document   : 2-10challenge
    Created on : 2016/08/19, 16:50:02
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String param1 = request.getParameter("number");
    int num1 = Integer.parseInt(param1);
    out.print(num1 + "を１桁の数字で素因数分解します<br>");

    for(int i = 2; num1 != 1; i++){
        if(num1 % 2 == 0){
            num1 /= 2;
            out.print(num1 + "<br>");
        }
        else if(num1 % 7 == 0){
            num1 /= 7;
            out.print(num1 + "<br>");
        }
        else if(num1 % 5 ==0){
            num1 /= 5;
            out.print(num1 + "<br>");
        }
        else if(num1 % 3 == 0){
            num1 /= 3;
            out.print(num1 + "<br>");
        }
        else{
            out.print("その他");
        }
    }
%>