<%-- 
    Document   : Challenge3
    Created on : 2016/08/25, 14:01:03
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Integer kakezan(int num1,int num2,boolean bool){
    if(bool == false){
        int num3 = num1 * num2; //掛け算
        return num3;
    }
    else{
        int num3 = num1 * num2; //掛け算
        int num4 = num3 * num3; //２乗
        return num4;
    }
}
%>

<%
    int number1 = 4;
    int number2 = 5;
    boolean bool = false;
    
    int kekka = kakezan(number1,number2,bool);
    out.print(kekka);
%>