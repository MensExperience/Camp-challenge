<%-- 
    Document   : javaclass8
    Created on : 2016/08/31, 18:15:58
    Author     : uezuchiharu
--%>

<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Javaの基本クラス　基礎課題
        //８．ファイルに自己紹介を書き出し、保存してください。
        
        //ファイルの場所
        File text = new File ("text.txt");
      
        //ファイルを開く
        FileWriter fw = new FileWriter(text);

        //まとめて書き込む
        BufferedWriter bw = new BufferedWriter(fw);
        
        bw.write("名前は上江洲智春です");
        bw.write("誕生日は３月２２日です");
        bw.write("血液型はB型です");
        bw.write("よろしくお願いします！");
        
        //ファイルを閉じる
        bw.close();
        
        %>        
    </body>
</html>
