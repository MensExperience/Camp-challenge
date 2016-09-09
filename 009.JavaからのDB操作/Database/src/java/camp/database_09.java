/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package camp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author uezuchiharu
 * 
 * JAVAからのDBアクセス
 * 課題9:フォームからデータを挿入できる処理を構築してください。
 * 
 */
public class database_09 extends HttpServlet {

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
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
        SimpleDateFormat birthday = new SimpleDateFormat("yyyy-MM-dd");
        
        
        try {
         request.setCharacterEncoding("UTF-8");
         
            //値取り出し
            String userID = request.getParameter("id");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String year = request.getParameter("year");
            String month = request.getParameter("month");
            String day = request.getParameter("day");
            
            //型変換
            int i_id = Integer.parseInt(userID);
            int i_age = Integer.parseInt(age);
            int i_year = Integer.parseInt(year);
            int i_month = Integer.parseInt(month);
            int i_day = Integer.parseInt(day);
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
            
            db_st = db_con.prepareStatement("insert into user value(?,?,?,?)");
            
            db_st.setInt(1, i_id);
            db_st.setString(2, name);
            db_st.setInt(3, i_age);
            db_st.setDate(4, new java.sql.Date(birthday.parse(i_year + "-" + i_month + "-" + i_day).getTime()));
            
            int i = db_st.executeUpdate();
            
            if (i != 0){
                out.println(i + "件、追加しました");
            }
            else {
                out.println("追加できませんでした");
            }
            
            //追加したデータを表示
            db_st = db_con.prepareStatement("select * from user where userID = ?");
            
            db_st.setInt(1, i_id);
            
            db_data = db_st.executeQuery();
           
            out.print("追加した情報はこちらです<br><br>");
            
            while(db_data.next()){
                out.print("userID：" + db_data.getInt("userID") + "<br>" +
                       "名前：" + db_data.getString("name") + "<br>" +
                       "年齢：" + db_data.getInt("age") + "<br>" + 
                       "誕生日：" + db_data.getDate("birthday") + "<br><br>");               
            }
            
                       
            db_st.close();
            db_con.close();            
            
        //エラーハンドリング    
        } catch (SQLException e_sql){
            out.print("接続時にエラーが発生しました" + e_sql.toString());
        } catch (Exception e){
            out.print("接続時にエラーが発生しました" + e.toString());
        } finally {           
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
                    System.out.print(e_con.getMessage());
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
