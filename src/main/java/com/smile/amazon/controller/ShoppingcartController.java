package com.smile.amazon.controller;

import com.smile.amazon.dto.ShoppingcartDTO;
import com.smile.amazon.model.Message;
import com.smile.amazon.model.PurchaseList;
import com.smile.amazon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "shoppingcart/")
public class ShoppingcartController {

    @Autowired
    private Message message;

    @Autowired
    private BookService bookService;

    //跳转到购物车页面
    /*@RequestMapping(value = "book_shoppingcart/{userId}")
    public String book_shoppingcart(Model model, @PathVariable Integer userId){
        ShoppingcartDTO shoppingcart = bookService.shoppingcartDTO(userId);
        model.addAttribute("shoppingcart", shoppingcart);
        return "index/book_shoppingcart";
    }*/

    @RequestMapping(value = "book_shoppingcart")
    public String book_shoppingcart(){
        System.out.println();
        return "index/book_shoppingcart";
    }

    @RequestMapping(value = "addShoppingcart")
    @ResponseBody
    public Message addShoppingcart(){
        System.out.println();
        return message;
    }

    //@RequestBody PurchaseList purchaseList
}
