<%-- 
    Document   : 2-9challenge
    Created on : 2016/08/19, 16:21:29
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.HashMap"%>
<%
    HashMap<String,String> hMap= 
            new HashMap<String,String>();
    hMap.put("1","AAA");
    hMap.put("hello","world");
    hMap.put("soeda","33");
    hMap.put("20","20");
    
    for(HashMap.Entry<String,String> list:
            hMap.entrySet()){
        out.println(list.getKey()+"：");
        out.println(list.getValue()+"<br>");
    }
    

    
    
    
    
%>