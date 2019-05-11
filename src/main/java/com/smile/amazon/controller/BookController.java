package com.smile.amazon.controller;


import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.model.Book;
import com.smile.amazon.model.Comment;
import com.smile.amazon.model.Message;
import com.smile.amazon.model.Review;
import com.smile.amazon.modelExpansion.CommentExpansion;
import com.smile.amazon.service.BookService;
import com.smile.amazon.service.CommentService;
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
    private CommentService commentService;

    @Autowired
    private Message message;

    @RequestMapping(value = "book_list")
    public String book_list(Model model){
        List<Book> bookList = bookService.bookList();
        model.addAttribute("bookList", bookList);
        return "/index/book_list";

    }

    @RequestMapping(value = "book_detail/{bookId}")
    public String book_detail(@PathVariable Integer bookId, Model model){
        BookDetailDTO bookDetail = bookService.bookDetail(bookId);
        model.addAttribute("bookDetail", bookDetail);
        return "/index/book_detail";
    }

    @RequestMapping(value = "book_shoppingcart")
    public String book_shoppingcart(){
        return "/index/book_shoppingcart";
    }

    @RequestMapping(value = "book_review/{bookId}")
    public String book_review(Model model, @PathVariable("bookId") Integer bookId){
        model.addAttribute("bookId", bookId);
        return "index/book_review_edit";
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

    @RequestMapping(value = "book_review_save", method = RequestMethod.POST)
    public String book_review_save(@RequestBody Review review){
        System.out.println();
        return "test";
    }

    @RequestMapping(value = "book_review")
    public String book_review(){
        return "index/book_review";
    }

    @RequestMapping(value = "book_comment_insert")
    @ResponseBody
    public Message book_comment_insert(@RequestBody Comment comment){
        try {
            //commentService.insert(comment);
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
