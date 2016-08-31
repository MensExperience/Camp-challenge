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
 */
public class blackjack extends HttpServlet {

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
            out.println("<title>Servlet blackjack</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>blackjack</h1>");
            
            Dealer d = new Dealer();
            User u = new User();
            
            d.setCard(d.deal());
            u.setCard(d.deal());
            
            //trueが返ってきたらhitを繰り返す
            //ディーラー
            while(d.checkSum() == true){
                d.setCard(d.hit());
                if(d.checkSum() == false){
                    break;
                }
            }
            //ユーザー
            while(u.checkSum() == true){
                u.setCard(d.hit());
                if(u.checkSum() == false){
                    break;
                }
            }
            
            //合計表示
            out.println("ディーラーの合計は" + d.open() + "です<br>");
            out.println("あなたの合計は" + u.open() + "です<br>");
            
            //勝敗の表示
            if(u.open() == d.open()){ //引き分け　
                out.println("引き分けです！");
            }
            else if(u.open() <= 21 && u.open() > d.open()){ //あなたの勝ち　21以下でディーラーより合計が大きい
                out.println("あなたの勝ちです！");
            }
            else{
                out.println("あなたの負けです！");
            }
            
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
