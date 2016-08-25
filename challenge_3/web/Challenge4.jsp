<%-- 
    Document   : Challenge4
    Created on : 2016/08/25, 14:53:53
    Author     : uezuchiharu
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! //自己紹介メソッド
    ArrayList getProfile(){
    
    ArrayList<String> list = new ArrayList<>();
    
    list.add("上江洲智春");
    list.add("３月２２日");
    list.add("よろしくお願いします！");
    return list;
}  
%>

<%! //boolean判定メソッド
    String hantei(boolean bool){
    if(bool == true){
        return "この処理は正しく実行できました<br><br>";
    }
    else{
        return "処理は実行できませんでした<br><br>";
    }
}
%>

<%
    boolean bool = true;
    String kekka = hantei(bool);
    out.print(kekka);
    
    ArrayList list = getProfile();
    for(int x = 0; x<10; x++) {
        out.print(list.get(0)+"<br>"+list.get(1)+"<br>"+list.get(2)+"<br>");
    }
%>