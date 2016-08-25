<%--
    Document   : challenge3_
    Created on : 2016/08/24, 15:30:04
    Author     : uezuchiharu
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    ArrayList getProfile(){
    
    ArrayList<String> list = new ArrayList<>();
    
    list.add("上江洲智春");
    list.add("３月２２日");
    list.add("よろしくお願いします！");
    return list;
        }
      
%>
<%
    ArrayList list = getProfile();
    for(int x = 0; x<10; x++) {
        out.print(list.get(0)+"<br>"+list.get(1)+"<br>"+list.get(2)+"<br>");
    }
%>