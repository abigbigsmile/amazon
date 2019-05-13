package com.smile.amazon.dto;

import com.smile.amazon.model.PurchaseList;
import com.smile.amazon.model.Shoppingcart;

public class ShoppingcartDTO extends Shoppingcart {

    private PurchaseList purchaseList;

    public PurchaseList getPurchaseList() {
        return purchaseList;
    }

    public void setPurchaseList(PurchaseList purchaseList) {
        this.purchaseList = purchaseList;
    }
}
