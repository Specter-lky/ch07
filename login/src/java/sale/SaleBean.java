package sale;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author abc
 */
public class SaleBean {
    private String sell_id;
    private String sell_amount;
    private String sell_date;
    private String sell_produce;
    private String sell_profit;
    private String sell_mark;
    public SaleBean(){
    }
    public String getSell_id() {
        return sell_id;
    }
    public void setSell_id(String date) {
        this.sell_id = date;
    }
    public String getSell_amount() {
        return sell_amount;
    }

    /**
     * @param thing the thing to set
     */
    public void setSell_amount(String thing) {
        this.sell_amount = thing;
    }
    public String getSell_date() {
        return sell_date;
    }
    public void setSell_date(String thing) {
        this.sell_date = thing;
    }
    public String getSell_produce() {
        return sell_produce;
    }
    public void setSell_produce(String thing) {
        this.sell_produce = thing;
    }
    public String getSell_profit() {
        return sell_profit;
    }
    public void setSell_profit(String thing) {
        this.sell_profit = thing;
    }
    public String getSell_mark() {
        return sell_mark;
    }
    public void setSell_mark(String thing) {
        this.sell_mark = thing;
    }
}
