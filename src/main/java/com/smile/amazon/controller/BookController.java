package com.smile.amazon.controller;


import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.dto.BookReviewDTO;
import com.smile.amazon.model.Book;
import com.smile.amazon.model.Comment;
import com.smile.amazon.model.Message;
import com.smile.amazon.model.Review;
import com.smile.amazon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;


    @Autowired
    private Message message;

    //首页展示书籍
    @RequestMapping(value = "book_list")
    public String book_list(Model model){
        List<Book> bookList = bookService.bookList();
        model.addAttribute("bookList", bookList);
        return "/index/book_list";

    }

    //图书详情页面
    @RequestMapping(value = "book_detail/{bookId}")
    public String book_detail(@PathVariable Integer bookId, Model model){
        BookDetailDTO bookDetail = bookService.bookDetail(bookId);
        model.addAttribute("bookDetail", bookDetail);
        return "/index/book_detail";
    }

    //跳转到购物车页面
    @RequestMapping(value = "book_shoppingcart")
    public String book_shoppingcart(){
        return "/index/book_shoppingcart";
    }

    //跳转到书评编辑页面
    @RequestMapping(value = "book_review_edit/{bookId}")
    public String book_review_edit(Model model, @PathVariable("bookId") Integer bookId){
        Book book = bookService.selectByPrimaryKey(bookId);
        model.addAttribute("book", book);
        return "index/book_review_edit";
    }

    //跳转到书评详情页面
    @RequestMapping(value = "book_review_detail/{reviewId}")
    public String book_review_detail(@PathVariable("reviewId") Integer reviewId){
        return "index/book_review_detail";
    }

    // 上传文章图片
    @RequestMapping(value = "uploadArticleImg", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public  @ResponseBody Map<String,String> uploadArticleImg(@RequestParam(value = "image_param") MultipartFile file,  //这样接收文件
            @RequestParam Map<String,String> params, HttpServletRequest request) {
        Map<String,String> ret=new HashMap<String, String>();
        try {
            String path="static/img/upload_review";
            String realPath="amazon/img/upload_review";
            Map<String,String> name=uploadFile(path, file, request);
            ret.put("link","http://" + request.getServerName() + ":" + request.getServerPort() + "/" + realPath + "/" + name.get("saveName"));
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public Map<String,String> uploadFile(String path,MultipartFile file, HttpServletRequest request) throws IOException {
        Map<String,String> result=new HashMap<String,String>();
        String fileName = file.getOriginalFilename();
        String basePath=request.getSession().getServletContext().getRealPath("/");
        String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        String saveName=String.valueOf((new Date()).getTime()).substring(8)+(int)((Math.random()*999+1))+'.'+fileType;
        File tempFile = new File(basePath+path, saveName);
        if (!tempFile.getParentFile().exists()) {    //创建文件夹
            tempFile.getParentFile().mkdir();
        }
        if (!tempFile.exists()) {
            tempFile.createNewFile();
        }
        file.transferTo(tempFile);
        result.put("fileName",fileName);
        result.put("saveName",saveName);
        return result;
    }

    //插入书评
    @RequestMapping(value = "book_review_insert", method = RequestMethod.POST)
    public @ResponseBody Message book_review_insert(@RequestBody Review review){
        int ret = bookService.insertReview(review);
        message.setStatus(ret);
        if(ret>0){
            message.setMsg("您的书评提交成功，谢谢您的用心……");
        }else{
            message.setMsg("您的书评提交过程出现问题，不好意思……");
        }
        return message;
    }


    @RequestMapping(value = "book_review")
    public String book_review(){
        return "index/book_review";
    }

    @RequestMapping(value = "book_comment_insert")
    @ResponseBody
    public Message book_comment_insert(@RequestBody Comment comment){
        try {
            bookService.insertComment(comment);
            message.setStatus(1);
            message.setMsg("评论成功！！！");
        } catch (Exception e) {
            e.printStackTrace();
            message.setStatus(-1);
            message.setMsg("评论出现一丁点问题……");
            return  message;
        }
        return message;
    }

}
