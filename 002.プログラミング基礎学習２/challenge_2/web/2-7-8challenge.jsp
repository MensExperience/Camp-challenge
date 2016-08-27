<%-- 
    Document   : 2-7challenge
    Created on : 2016/08/19, 15:58:31
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String num[] = {"10","100","hayashi","soeda","-20","118","END"};
    
    for(int i = 0; i < num.length; i++){
        out.println(num[i]);
    }
    
    out.print("<br>");
    
    num[3] = "33";
    
    for(int i = 0; i < num.length; i++){
        out.println(num[i]);
    }
%>