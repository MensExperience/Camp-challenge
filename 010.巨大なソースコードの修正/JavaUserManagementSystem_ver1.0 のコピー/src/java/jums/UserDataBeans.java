/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.sql.Timestamp;

/**
 *
 * @author uezuchiharu
 * 
 * フォームから受け取ったデータを格納する
 * 
 */

public class UserDataBeans {
     
    //データ格納の変数を定義
    private String name;
    private Integer year;
    private Integer month;
    private Integer day;
    private Integer type;
    private String tell;
    private String comment;
    private Timestamp newDate;
    
    public String getName() {
        return this.name;
    }
    public void setName(String name) {
        this.name =  name;
    }
    
    public Integer getYear() {
        return this.year;
    }
    public void setYear(Integer year) {
        this.year = year;
    }
    
    public Integer getMonth() {
        return this.month;
    }
    public void setMonth(Integer month) {
        this.month = month;
    }
    
    public Integer getDay() {
        return this.day;
    }
    public void setDay(Integer day) {
        this.day = day;
    }
    
    public Integer getType() {
        return this.type;
    }
    public void setType(Integer type) {
        this.type = type;
    }
    
    public String getTell() {
        return this.tell;
    }
    public void setTell(String tell) {
        this.tell = tell;
    }
    
    public String getComment() {
        return this.comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    
    public Timestamp getNewDate() {
        return this.newDate;
    }
    public void  setNewDate(Timestamp newDate) {
        this.newDate = newDate;
    }        
}
