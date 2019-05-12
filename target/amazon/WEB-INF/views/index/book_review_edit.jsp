<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0"/>
    <base href="http://localhost:8080/amazon/"/>
    <title>评论 ${book.name}</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/froala_editor.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/froala_style.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/code_view.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/image_manager.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/image.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/table.css"/>
    <link rel="stylesheet" type="text/css" href="css/forala_editor/video.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css"/>
    <style>
      body {
        text-align: center;
      }

      div#editor {
        width: 100%;
        height: 100px;
        margin: auto;
        text-align: left;
      }
    </style>

  </head>
  <body>
    <div class="nav">
      <div class="nav-inner">
        <div class="nav-logo">
          <a href="https://www.douban.com/">豆瓣</a></div>
        <h1 class="nav-label">写评论</h1>
        <div id="nav-top-actions" class="nav-actions">
          <div data-reactroot="" class="review-editor-extra-actions">
            <ul class="review-editor-extra-action-group">
              <li>
                <a href="javascript:;" class="review-editor-button-word">
                  <span>字数</span></a>
              </li>
              <li>
                <a href="javascript:;" class="review-editor-button-fullscreen">
                  <span>全屏</span></a>
              </li>
            </ul>
            <div class="review-editor-submit-group">
              <a href="javascript:;" class="review-editor-button-preview">预览</a>
              <a href="javascript:;" onclick="saveArticle()" class="review-editor-button-submit">提交</a></div>
          </div>
        </div>
      </div>
    </div>
    <div id="wrapper">
      <div id="content">
        <div class="grid-16-8 clearfix">
          <div class="article">
            <div id="review-editor-root" class="review-editor" style="display: block;">
              <div data-reactroot="" class="  ">

                <div class="review-editor-subject-card">
                  <a href="https://book.douban.com/subject/2567698/" target="_blank">
                    <div class="review-editor-subject-card-cover review-editor-subject-card-cover-book">
                      <img src="${book.coverImage}"></div>
                    <div class="review-editor-subject-card-info">
                      <div class="review-editor-subject-card-title">${book.name}</div>
                      <div class="review-editor-subject-card-summary">${book.name}/ ${book.author} / ${book.publish}         <fmt:formatDate value="${book.publishTime}" pattern="yyyy-MM-dd"/> </div></div>
                  </a>
                </div>

                <div class="review-editor-title">
                  <span>
                    <textarea id="reviewTitle" class="review-editor-input" tabindex="1" maxlength="200" placeholder="添加标题" rows="1" style="resize: none; overflow: hidden; height: 30px;"></textarea>
                  </span>
                </div>
              </div>

              <div id="editor">
                    <textarea  id='edit' name="content"  style="margin-top: 30px;"></textarea>
                <%--<div>
                    <br/><input type="button" onclick="saveArticle()" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                </div>--%>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/froala_editor.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/align.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/code_beautifier.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/code_view.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/draggable.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/image.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/image_manager.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/link.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/lists.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/paragraph_format.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/paragraph_style.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/table.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/video.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/url.min.js"></script>
    <script type="text/javascript" src="js/forala_editor/entities.min.js"></script>

    <script>
        $(function(){
            $('#edit')
                .on('froalaEditor.initialized', function (e, editor) {
                  //$('#edit').froalaEditor('html.set','请输入您的书评');
                    /*$('#edit').parents('form').on('submit', function () {
                   })*/
                })
                .froalaEditor({
                    enter: $.FroalaEditor.ENTER_P,
                    height: "250px",
                    language: 'zh_cn',
                    placeholderText: '请输入您的书评^V^...',
                    // Set the image upload parameter.
                    imageUploadParam: 'image_param',
                    // Set the image upload URL.
                    imageUploadURL: 'uploadArticleImg',
                    // Additional upload params.
                    imageUploadParams: {id: 'my_editor'},
                    // Set request type.
                    imageUploadMethod: 'POST',
                    // Set max image size to 5MB.
                    imageMaxSize: 5 * 1024 * 1024,
                    // Allow to upload PNG and JPG.
                    imageAllowedTypes: ['jpeg', 'jpg', 'png']
                })
        });

        function saveArticle(){
            var html=$('#edit').froalaEditor('html.get', true);
            var data = {
              bookId:${book.bookId},
              userId:0,
              reviewTime:new Date(),
              reviewTitle:$("#reviewTitle").val(),
              reviewContent:html
            };
            $.ajax({
              url: 'http://localhost:8080/amazon/book_review_insert',
              type: 'POST',
              contentType:"application/json",
              dataType: 'json',
              data:JSON.stringify(data),
                success: function(ret){
                    if(ret.status>0){
                      alert(ret.msg);
                      window.location.href="book_detail/${bookId}";
                    }else{
                        alert("您的书评提交出现了一丢丢问题……")
                    }
                },
                error:function(err) {
                    console.log(err.msg);
                }
            });
        }
    </script>
  </body>

</html>