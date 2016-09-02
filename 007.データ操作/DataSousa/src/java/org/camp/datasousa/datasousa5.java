/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.datasousa;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 *
 * @author uezuchiharu
 */
public class datasousa5 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet datasousa5</title>");            
            out.println("</head>");
            out.println("<body>");
            
        //JAVAのデータ操作　基礎課題
        //5．以下の機能を実装してください。
        //名前・性別・趣味を入力するページを作成してください。
        //また、入力された名前・性別・趣味を記憶し、次にアクセスした際に記録されたデータを初期値として表示してください。
        //※Javaと同時に、HTMLの知識が必要になります。
        //※入力フィールドの使い方を調べてみましょう。
        
        //受け取る文字コード
        request.setCharacterEncoding("UTF-8");
        
        //フォームの値を取り出す
        String name = request.getParameter("textName");
        String gender = request.getParameter("rdoGender");
        String hobby = request.getParameter("textareaHobby");
       
       
        //セッションの取得
        HttpSession hs = request.getSession(true);
        
        
        //値に格納        
        hs.setAttribute("lastName" , name);
        hs.setAttribute("lastGender" , gender);
        hs.setAttribute("lastText" , hobby);
               
        //表示
        out.println("名前：" + name + "<br><br>" + 
                    "性別：" + gender + "<br><br>" +
                    "趣味：" + hobby);
        
        out.println("</body>");
        out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}