<%-- 
    Document   : 2-2challenge
    Created on : 2016/08/19, 14:24:30
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     char key = 'あ';
     
    switch(key){
        case 'A': 
            out.print("英語");
            break;
        case 'あ':
            out.print("日本語");
            break;
    }
%>