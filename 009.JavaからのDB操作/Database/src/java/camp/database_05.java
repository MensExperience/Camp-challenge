/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package camp;

import java.sql.*;
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
 * JAVAからのDBアクセス
 * 課題5：nameに「茂」を含む情報を取得し、画面に取得した情報を表示してください
 * 
 */
public class database_05 extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        //変数定義
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null; 
        
        try
        {
        
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
        
            db_st = db_con.prepareStatement("select * from user where name like ?");           
            
            db_st.setString(1,"%茂%");
            
            db_data = db_st.executeQuery();
            
            //検索結果の表示            
            out.print("nameに「茂」が含まれているuser<br><br>");
            
            while(db_data.next()){
                out.print("userID：" + db_data.getInt("userID") + "<br>" +
                        "名前：" + db_data.getString("name") + "<br>" +
                        "年齢：" + db_data.getInt("age") + "<br>" +
                        "誕生日：" + db_data.getDate("birthday") + "<br><br>");
            }
            
            db_data.close();
            db_st.close();
            db_con.close();
            
        //エラーハンドリング
        } catch (SQLException e_sql){
            out.print("接続時にエラーが発生しました" + e_sql.toString());
        } catch (Exception e){
            out.print("接続時にエラーが発生しました" + e.toString());
        } finally {
            if(db_data != null){
                try{
                    db_data.close();
                } catch (Exception e_data){
                    System.out.print(e_data.getMessage());
                }
            }
            if(db_st != null){
                try{
                    db_st.close();
                } catch (Exception e_st){
                    System.out.print(e_st.getMessage());
                }
            }
            if(db_con != null){
                try{
                    db_con.close();
                } catch (Exception e_con){
                    System.out.printf(e_con.getMessage());
                }
            }
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
