/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.object;

import java.util.*;

/**
 *
 * @author uezuchiharu
 * 
 * １．Humanという抽象クラスを作成し、以下を実装してください。
 *　・openというabstractな公開メソッドを用意してください。
 *　・setCardというArrayListを引数とした、abstractな公開メソッドを用意してください。
 *　・checkSumというabstractな公開メソッドを用意してください。
 *　・myCardsというArrayListの変数を用意してください。
 * 
 * ２．１で作成した抽象クラスを継承して、以下のクラスを作成してください。
 *　・Dealerクラス
 *　・Userクラス
 * 
 * ３．まずはDealerクラスを完成させます。
 *　・cardsというArrayListの変数を用意し、初期処理でこのcardsに全てのトランプを持たせてください。
 *　・dealという公開メソッドを用意し、cardsからランダムで2枚のカードをArrayListにして返却してください。
 *　・hitという公開メソッドを用意し、cardsからランダムで1枚のカードをArrayListにして返却してください。
 * 
 * ４．DealerとUser両方に必要な処理を実装し、完成させます。
 *　・setCardは、ArrayListで受けたカード情報をmyCardsに追加するように実装してください。
 *　・checkSumは、myCardsを確認し、まだカードが必要ならtrue、必要無ければfalseを返却するように実装してください。 
 *　・openは、myCardsのカードの合計値を返却するように実装してください。
 *
 * ５．ブラックジャックの準備は整いました。ゲームが成り立つよう、２つのクラスを利用してコーディングしてみてください。
 * 
 */

abstract public class Human {
    
    //継承先に実装するメソッド
    abstract public Integer open();
    abstract public void setCard(Integer ArrayList[]);
    abstract public boolean checkSum();
    
   //myCards ArrayListを作成
    ArrayList<Integer> myCards = new ArrayList<>();
}

//ディーラークラス
class Dealer extends Human {
    //ジョーカー、キング、クイーン = 10
    int jkq = 10;
    
    //cardsに全てのトランプの値を入れる
    ArrayList<Integer> cards = new ArrayList<>();
    {
    for(int i = 0; i < 4; i++){ //ハート、スペード、ダイヤ、クローバー
        for(int x = 0; x < 10; x++){
            cards.add(x);
        }
        for(int y = 0; y < 4; y++){
            cards.add(jkq);
        }
    }
    }
    
    public ArrayList deal(){
    //ランダムに取得した２枚のカードを入れる変数
    ArrayList<Integer> hand = new ArrayList<>();
 
    //乱数取得
    Random rnd = new Random();
    
    for(int i = 0; i < 2; i++){
        int index = rnd.nextInt(cards.size());
        hand.add(cards.get(index));
    }
    return hand;
    }
    
    public ArrayList hit(){
    //ランダムに取得した１枚のカードを入れる変数
    ArrayList<Integer> hit = new ArrayList<>();
    
    //乱数取得
    Random rnd = new Random();
    
    int index = rnd.nextInt(cards.size());
    hit.add(cards.get(index));
    return hit;
    }
    
    //myCardsの合計
    @Override
    public Integer open(){
        int total = 0;
        for(int i = 0; i < myCards.size(); i++){
            total = total + myCards.get(i); 
        }
        return total;
    }
    
    //myCardsにカードを追加
    public void setCard(ArrayList<Integer> setCard){
        for(int i = 0; i < setCard.size(); i++){
            myCards.add(setCard.get(i));
        }
    }
    
    //Aは1点または11点どちらでもOK　11点以下でAがあったら11に変える
    @Override
    public boolean checkSum(){
    
    int total = open(); //myCardsの合計を出す
    
    if(total < 11){
        for(int i =0; i < myCards.size(); i++){
            if(myCards.get(i) == 1){
                myCards.set(i, 11); //値を11へ更新
            }
        } 
    }
    //ディーラーは16点以下ならhitする true、そうでなければ falseを返す
    return total < 16;
    }
    
    @Override
    public void setCard(Integer[] ArrayList) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

//ユーザークラス
class User extends Human{
    
    //myCardsの合計
    @Override
    public Integer open(){
        int total = 0;
        for(int i = 0; i < myCards.size(); i++){
            total = total + myCards.get(i); 
        }
        return total;
    }
    
    //myCardsにカードを追加
    public void setCard(ArrayList<Integer> setCard){
        for(int i = 0; i < setCard.size(); i++){
            myCards.add(setCard.get(i));
        }
    }
    
    //Aは1点または11点どちらでもOK　11点以下でAがあったら11に変える
    @Override
    public boolean checkSum(){
    
    int total = open(); //myCardsの合計を出す
    
    if(total < 11){
        for(int i =0; i < myCards.size(); i++){
            if(myCards.get(i) == 1){
                myCards.set(i, 11); //値を11へ更新
            }
        } 
    }
    //ディーラーは16点以下ならhitする true、そうでなければ falseを返す
    return total < 16;
    }
    
    @Override
    public void setCard(Integer[] ArrayList) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
