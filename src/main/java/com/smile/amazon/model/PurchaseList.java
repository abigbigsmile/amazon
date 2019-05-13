package com.smile.amazon.model;

public class PurchaseList {
    private Integer bookId;

    private Integer cartId;

    private Double bookPrice;

    private Byte bookNum;

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Double getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public Byte getBookNum() {
        return bookNum;
    }

    public void setBookNum(Byte bookNum) {
        this.bookNum = bookNum;
    }
}