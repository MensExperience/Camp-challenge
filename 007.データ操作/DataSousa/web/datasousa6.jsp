<%-- 
    Document   : datasousa6
    Created on : 2016/09/01, 14:59:12
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
        <!-- CSS -->
        <style>
            body{
                margin: 40px;
                line-height: 30px;
            }
            .title {
                font-size: 16px;
                background-color: lightgray;
                width: 830px;
                padding: 5px;
                text-align: center;
            }
            h2{
               font-size: 18px;
               padding: 5px;
            }
            p{
                font-size: 16px;
            }
            .sampleCode{
                font-size: 16px;
                background-color: lightblue;
                padding: 5px;
            }        
        </style>       
    </head>
    <body>
        <!-- 
        JAVAのデータ操作　応用課題
        6．HTMLについて調べましょう。
        HTMLには入力フィールド意外にも様々なタグが存在します。
        Webページをデザインする上で欠かせない知識なので、
        タグを調べ、色々と使ってみましょう。  
        -->
        
        <!-- タイトル -->
        <div class = title>
            <h1>JAVAのデータ操作　応用課題　HTMLのタグについて</h1>
        </div>        
        <!--
        ここから本文        
        1.見出しについて
        -->
        <h2>1.見出し（h1〜h6要素）</h2>        
        <span class="sampleCode">&lt;h1>見出し&lt;/h1></span>
        <p>
            文章の見出しとなる要素<br>
            h1〜h6まであり、数字が大きくなるにつれて小さな見出しになっていく<br><br>
        </p>       
        <!-- 2.段落について -->
        <h2>2.段落（p要素）</h2> 
        <span class="sampleCode">&lt;p>タグで囲まれた部分が段落&lt;/p></span>
        <p>
            p要素は段落を表す<br>
            pタグで囲まれた部分が段落となる<br><br>
        </p>                
        <!-- 3.リストについて -->
        <h2>3.順序のないリスト（ul要素、li要素）</h2>
        <span class="sampleCode">&lt;ul><br>
            &nbsp;&nbsp; &lt;li>リスト１&lt;/li> &nbsp;&nbsp;<br>
            &nbsp;&nbsp; &lt;li>リスト２&lt;/li> &nbsp;&nbsp;<br>
            &nbsp;&nbsp; &lt;li>リスト３&lt;/li> &nbsp;&nbsp;<br>
        &lt;/ul></span>  
        <P>
            ul要素の中にli要素を入れて、順序のないリストを作る<br><br>
        </P>        
        <!-- 4.aタグについて -->
        <h2>4.リンク（a要素）</h2>
        <span class="sampleCode">&lt;a>href="リンク先のurl">リンク&lt;/a></span><br>
        <a href="https://www.google.co.jp/">Google！</a><br><br>       
        <!-- 5.画像について -->
        <h2>5.画像表示（img要素）</h2>
        <span class="sampleCode">&lt;img>src="画像url" alt="画像が表示されなかった時に表示される代替えテキスト"
            title="画像タイトル"&lt;/img></span>        
    </body>
</html>
