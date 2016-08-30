/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.object;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author uezuchiharu
 * 
 * オブジェクト指向１　基礎課題
 * 
 * ４．３のクラスを継承し、以下の機能を持つクラスを作成してください。
 *　・２つの変数の中身をクリアするパブリックなメソッド
 */

public class GetProfileClear extends HttpServlet {
    
    String yourName = ("");
    int yourAge = 0;
    
    public GetProfileClear(){}
    
    //名前
    public void setName(String name){
        this.yourName = name;
    }
    public String getName(){
        return yourName;
    }
    //年齢
    public void setAge(int age){
        this.yourAge = age;
    }
    public int getAge(){
        return yourAge;
    }
    
    //clear
    class Clear extends GetProfileClear {
   
    public void setClear(String name,int age){
            this.yourName = name;
            this.yourAge = age;
        }
    @Override
    public String getName(){
        return yourName;
    }
    public int yourAge(){
        return yourAge;
    }
    }
    

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
            out.println("<title>Servlet GetProfileClear</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>オブジェクト指向１　基礎課題</h1>");
            
            //値を入力
            this.setName("田中");
            this.setAge(22);
            
            //値をプリント
            out.println(yourName);
            out.println(yourAge + "<br>");
            
            //クリアメソッド
            
            Clear clear = new Clear();
            clear.setClear("",0);
            
            out.println(clear.getName());
            out.println(clear.yourAge);
            
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