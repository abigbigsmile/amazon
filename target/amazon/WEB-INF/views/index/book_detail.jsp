<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page isELIgnored="false"%>
<jsp:useBean id="timer" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit book-new-nav">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <base href="http://localhost:8080/amazon/"/>
  <title>${bookDetail.name}(豆瓣)</title>

  <link type="text/css" rel="stylesheet" href="css/dialog.css">
  <link type="text/css" rel="stylesheet" href="css/setting_standalone.css">
  <link type="text/css" rel="stylesheet" href="css/report_dialog.css">

  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">
  <meta http-equiv="mobile-agent" content="format=html5; url=https://m.douban.com/book/subject/2567698/">
  <meta name="keywords" content="三体,刘慈欣,重庆出版社,2008-1,简介,作者,书评,论坛,推荐,二手">
  <meta name="description" content="图书三体 介绍、书评、论坛及推荐 ">

  <link href="css/master.css" rel="stylesheet" type="text/css">
  <link href="css/init.css" rel="stylesheet">
  <style type="text/css"></style>

  <link rel="stylesheet" href="css/subject.css">
  <link href="css/like.css" rel="stylesheet">
  <link rel="stylesheet" href="css/648cc550d3df41fa.css">
  <link rel="shortcut icon" href="https://img3.doubanio.com/favicon.ico" type="image/x-icon">
  <link rel="alternate" href="https://book.douban.com/feed/subject/2567698/reviews" type="application/rss+xml" title="RSS">
  <link rel="stylesheet" href="css/reveal.css">
  <style type="text/css">h2 {color: #007722;}</style>
  <%--<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>--%>
  <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="js/jquery.reveal.js"></script>
  <style type="text/css">
    body { font-family: "HelveticaNeue","Helvetica-Neue", "Helvetica", "Arial", sans-serif; }
    .big-link { display:block; margin-top: 100px; text-align: center; font-size: 70px; color: #06f; }
  </style>
</head>

<body class="vsc-initialized">
<link href="css/bundle_book_detail.css" rel="stylesheet" type="text/css">
<div id="db-global-nav" class="global-nav">
  <div class="bd">
    <div class="top-nav-info">
      <ul>
        <li>
          <a id="top-nav-doumail-link" href="https://www.douban.com/doumail/">豆邮</a></li>
        <li class="nav-user-account">
          <a target="_blank" href="https://accounts.douban.com/passport/setting/" class="bn-more" rel="off">
            <span>电影中发现世界的帐号</span>
            <span class="arrow"></span>
          </a>
          <div class="more-items">
            <table cellpadding="0" cellspacing="0">
              <tbody>
              <tr>
                <td>
                  <a href="https://www.douban.com/mine/">个人主页</a></td>
              </tr>
              <tr>
                <td>
                  <a target="_blank" href="https://www.douban.com/mine/orders/">我的订单</a></td>
              </tr>
              <tr>
                <td>
                  <a target="_blank" href="https://www.douban.com/mine/wallet/">我的钱包</a></td>
              </tr>
              <tr>
                <td>
                  <a target="_blank" href="https://accounts.douban.com/passport/setting/">帐号管理</a></td>
              </tr>
              <tr>
                <td>
                  <a href="https://www.douban.com/accounts/logout?source=book&amp;ck=uMUG">退出</a></td>
              </tr>
              </tbody>
            </table>
          </div>
        </li>
      </ul>
    </div>
    <div class="top-nav-reminder">
      <a href="https://www.douban.com/notification/" class="lnk-remind">提醒</a>
      <div id="top-nav-notimenu" class="more-items">
        <div class="bd">
          <p>加载中...</p>
        </div>
      </div>
    </div>
    <div class="top-nav-doubanapp">
      <a href="https://www.douban.com/doubanapp/app?channel=top-nav" class="lnk-doubanapp">下载豆瓣客户端</a>
      <div id="doubanapp-tip">
        <a href="https://www.douban.com/doubanapp/app?channel=qipao" class="tip-link">豆瓣
          <span class="version">6.0</span>全新发布</a>
        <a href="javascript: void 0;" class="tip-close">×</a></div>
      <div id="top-nav-appintro" class="more-items">
        <p class="appintro-title">豆瓣</p>
        <p class="qrcode">扫码直接下载</p>
        <div class="download">
          <a href="https://www.douban.com/doubanapp/redirect?channel=top-nav&amp;direct_dl=1&amp;download=iOS">iPhone</a>
          <span>·</span>
          <a href="https://www.douban.com/doubanapp/redirect?channel=top-nav&amp;direct_dl=1&amp;download=Android" class="download-android">Android</a></div>
      </div>
    </div>
    <div class="global-nav-items">
      <ul>
        <li class="">
          <a href="https://www.douban.com/" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-main&quot;,&quot;uid&quot;:&quot;131598133&quot;}">豆瓣</a></li>
        <li class="on">
          <a href="https://book.douban.com/" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-book&quot;,&quot;uid&quot;:&quot;131598133&quot;}">读书</a></li>
        <li class="">
          <a href="https://movie.douban.com/" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-movie&quot;,&quot;uid&quot;:&quot;131598133&quot;}">电影</a></li>
        <li class="">
          <a href="https://music.douban.com/" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-music&quot;,&quot;uid&quot;:&quot;131598133&quot;}">音乐</a></li>
        <li class="">
          <a href="https://www.douban.com/location" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-location&quot;,&quot;uid&quot;:&quot;131598133&quot;}">同城</a></li>
        <li class="">
          <a href="https://www.douban.com/group" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-group&quot;,&quot;uid&quot;:&quot;131598133&quot;}">小组</a></li>
        <li class="">
          <a href="https://read.douban.com/?dcs=top-nav&amp;dcm=douban" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-read&quot;,&quot;uid&quot;:&quot;131598133&quot;}">阅读</a></li>
        <li class="">
          <a href="https://douban.fm/?from_=shire_top_nav" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-fm&quot;,&quot;uid&quot;:&quot;131598133&quot;}">FM</a></li>
        <li class="">
          <a href="https://time.douban.com/?dt_time_source=douban-web_top_nav" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-time&quot;,&quot;uid&quot;:&quot;131598133&quot;}">时间</a></li>
        <li class="">
          <a href="https://market.douban.com/?utm_campaign=douban_top_nav&amp;utm_source=douban&amp;utm_medium=pc_web" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-market&quot;,&quot;uid&quot;:&quot;131598133&quot;}">豆品</a></li>
        <li>
          <a href="https://book.douban.com/subject/2567698/#more" class="bn-more">
            <span>更多</span></a>
          <div class="more-items">
            <table cellpadding="0" cellspacing="0">
              <tbody>
              <tr>
                <td>
                  <a href="https://ypy.douban.com/" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-ypy&quot;,&quot;uid&quot;:&quot;131598133&quot;}">豆瓣摄影</a></td>
              </tr>
              </tbody>
            </table>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<link href="css/bundle_book_detail_2.css" rel="stylesheet" type="text/css">
<div id="db-nav-book" class="nav">
  <div class="nav-wrap">
    <div class="nav-primary">
      <div class="nav-logo">
        <a href="https://book.douban.com/">豆瓣读书</a></div>
      <div class="nav-search">
        <form action="https://book.douban.com/subject_search" method="get">
          <fieldset>
            <legend>搜索：</legend>
            <label for="inp-query"></label>
            <div class="inp">
              <input id="inp-query" name="search_text" size="22" maxlength="60" placeholder="书名、作者、ISBN" value="" autocomplete="off"></div>
            <div class="inp-btn">
              <input type="submit" value="搜索"></div>
            <input type="hidden" name="cat" value="1001"></fieldset>
        </form>
      </div>
    </div>
  </div>
  <div class="nav-secondary">
    <div class="nav-items">
      <ul>
        <li>
          <a href="https://book.douban.com/mine">我读</a></li>
        <li>
          <a href="https://book.douban.com/updates">动态</a></li>
        <li>
          <a href="https://book.douban.com/recommended">豆瓣猜</a></li>
        <li>
          <a href="https://book.douban.com/tag/">分类浏览</a></li>
        <li>
          <a href="https://book.douban.com/cart/">购书单</a></li>
        <li>
          <a href="https://read.douban.com/ebooks/?dcs=book-nav&amp;dcm=douban" target="_blank">电子图书</a></li>
        <li>
          <a href="https://market.douban.com/book?utm_campaign=book_nav_freyr&amp;utm_source=douban&amp;utm_medium=pc_web">豆瓣书店</a></li>
        <li>
          <a href="https://book.douban.com/annual/2018?source=navigation" target="_blank">2018年度榜单</a></li>
        <li>
          <a href="https://www.douban.com/standbyme/2018?source=navigation" target="_blank">2018书影音报告</a></li>
        <li class=" book-cart">
          <a href="https://market.douban.com/cart/?biz_type=book&amp;utm_campaign=book_nav_cart&amp;utm_source=douban&amp;utm_medium=pc_web" target="_blank">购物车(0)</a></li>
      </ul>
    </div>
    <a href="https://book.douban.com/annual/2018?source=book_navigation" class="bookannual2018"></a>
  </div>
</div>

<div id="wrapper">
  <div id="dale_book_subject_top_icon"></div>
  <h1>
    <span property="v:itemreviewed">${bookDetail.name}</span>
    <div class="clear"></div>
  </h1>
  <div id="content">
    <div class="grid-16-8 clearfix">
      <div class="article">
        <div class="indent">
          <div class="subjectwrap clearfix">
            <div class="subject clearfix">
              <div id="mainpic" class="">
                <a class="nbg" href="${bookDetail.coverImage}" title="${bookDetail.name}">
                  <img src="${bookDetail.coverImage}" title="点击看大图" alt="${bookDetail.name}" rel="v:photo" style="width: 135px;max-height: 200px;"></a>
                <br>
              </div>
              <div id="info" class="">
                <span class="pl">作者:</span>&nbsp;
                <a href="https://book.douban.com/author/4561353/">${bookDetail.author}</a>
                <br>
                <span class="pl">出版社:</span>${bookDetail.publish}
                <br>
                <span class="pl">出版年:</span><fmt:formatDate value="${bookDetail.publishTime}" type="date" pattern="yyyy 年 MM 月 dd 日"/>
                <br>
                <span class="pl">定价:</span>${bookDetail.price}
                <br>
                <span class="pl">ISBN:</span>${bookDetail.isbn}
                <br></div></div>
            <div id="interest_sectl" class="">
              <div class="rating_wrap clearbox" rel="v:rating">
                <div class="rating_logo">豆瓣评分</div>
                <div class="rating_self clearfix" typeof="v:Rating">
                  <strong id="star_ave" class="ll rating_num " property="v:average"></strong>
                  <span property="v:best" content="10.0"></span>
                  <div class="rating_right ">
                    <div class="ll bigstar45"></div>
                    <div class="rating_sum">
                          <span class="">
                            <a href="https://book.douban.com/subject/2567698/collections" class="rating_people">
                              <span id="num" property="v:votes"></span>人评价</a></span>
                    </div>
                  </div>
                </div>
                <span class="stars5 starstop" title="力荐">5星</span>
                <div id="star_five" class="power" style="width:64px"></div>
                <span class="rating_per">59.1%</span>
                <br>
                <span class="stars4 starstop" title="推荐">4星</span>
                <div id="star_four" class="power" style="width:34px"></div>
                <span class="rating_per">32.0%</span>
                <br>
                <span class="stars3 starstop" title="还行">3星</span>
                <div id="star_three" class="power" style="width:8px"></div>
                <span class="rating_per">7.7%</span>
                <br>
                <span class="stars2 starstop" title="较差">2星</span>
                <div id="star_two" class="power" style="width:0px"></div>
                <span class="rating_per">0.9%</span>
                <br>
                <span class="stars1 starstop" title="很差">1星</span>
                <div id="star_one" class="power" style="width:0px"></div>
                <span class="rating_per">0.4%</span>
                <br></div>
            </div>
          </div>
          <div id="interest_sect_level" class="clearfix">
            <a href="https://book.douban.com/subject/2567698/#" rel="nofollow" class="collect_btn colbutt ll" name="pbtn-2567698-wish">
                  <span>
                    <form method="POST" action="https://book.douban.com/subject/2567698/?interest=wish" class="miniform">
                      <div style="display:none;">
                        <input type="hidden" name="ck" value="uMUG"></div>
                      <input type="submit" class="minisubmit j  " value="想读" title=""></form>
                  </span>
            </a>
            <a href="https://book.douban.com/subject/2567698/#" rel="nofollow" class="collect_btn colbutt ll" name="pbtn-2567698-do">
                  <span>
                    <form method="POST" action="https://book.douban.com/subject/2567698/?interest=do" class="miniform">
                      <div style="display:none;">
                        <input type="hidden" name="ck" value="uMUG"></div>
                      <input type="submit" class="minisubmit j  " value="在读" title=""></form>
                  </span>
            </a>
            <a href="https://book.douban.com/subject/2567698/#" rel="nofollow" class="collect_btn colbutt ll" name="pbtn-2567698-collect">
                  <span>
                    <form method="POST" action="https://book.douban.com/subject/2567698/?interest=collect" class="miniform">
                      <div style="display:none;">
                        <input type="hidden" name="ck" value="uMUG"></div>
                      <input type="submit" class="minisubmit j  " value="读过" title=""></form>
                  </span>
            </a>
            <div class="ll j a_stars">评价:
              <span id="rating">
                    <span id="stars" data-solid="https://img3.doubanio.com/f/shire/5a2327c04c0c231bced131ddf3f4467eb80c1c86/pics/rating_icons/star_onmouseover.png" data-hollow="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png" data-solid-2x="https://img3.doubanio.com/f/shire/7258904022439076d57303c3b06ad195bf1dc41a/pics/rating_icons/star_onmouseover@2x.png" data-hollow-2x="https://img3.doubanio.com/f/shire/95cc2fa733221bb8edd28ad56a7145a5ad33383e/pics/rating_icons/star_hollow_hover@2x.png">
                      <a href="javascript:;" class="j a_collect_btn" name="pbtn-2567698-collect-1">
                        <img src="img/star_hollow_hover.png" id="star1" width="16" height="16"></a>
                      <a href="javascript:;" class="j a_collect_btn" name="pbtn-2567698-collect-2">
                        <img src="img/star_hollow_hover.png" id="star2" width="16" height="16"></a>
                      <a href="javascript:;" class="j a_collect_btn" name="pbtn-2567698-collect-3">
                        <img src="img/star_hollow_hover.png" id="star3" width="16" height="16"></a>
                      <a href="javascript:;" class="j a_collect_btn" name="pbtn-2567698-collect-4">
                        <img src="img/star_hollow_hover.png" id="star4" width="16" height="16"></a>
                      <a href="javascript:;" class="j a_collect_btn" name="pbtn-2567698-collect-5">
                        <img src="img/star_hollow_hover.png" id="star5" width="16" height="16"></a>
                    </span>
                    <span id="rateword" class="pl"></span>
                    <input id="n_rating" type="hidden" value=""></span>
            </div>
          </div>
          <div class="gtleft">
            <ul class="ul_subject_menu bicelink color_gray pt6 clearfix">
              <li>
                <img src="img/add-review.gif">&nbsp;
                <a class="" href="https://book.douban.com/annotation/write?sid=2567698" rel="nofollow">写笔记</a></li>
              <li>
                <img src="img/add-review.gif">&nbsp;
                <a class="" href="https://book.douban.com/subject/2567698/new_review" rel="nofollow">写书评</a></li>
              <li>
                    <span class="rr">
                      <img src="img/add-cart.gif">
                      <a name="2567698" class="j a_add2cart" href="javascript:;">加入购书单</a>
                      <span class="hidden">已在
                        <a href="https://book.douban.com/cart">购书单</a></span>
                    </span>
                <br class="clearfix"></li>
              <li>
                <div class="doulist-add-btn">
                  <a href="javascript:void(0)" data-id="2567698" data-cate="1001" data-canview="True" data-url="https://book.douban.com/subject/2567698/" data-catename="图书" data-link="https://www.douban.com/people/131598133/doulists/all?add=2567698&amp;cat=1001" data-title="三体" data-picture="https://img1.doubanio.com/view/subject/l/public/s2768378.jpg" class="lnk-doulist-add" onclick="moreurl(this, { &#39;from&#39;:&#39;doulist-btn-1001-2567698-131598133&#39;})">
                    <i>
                    </i>添加到豆列</a>
                </div>
              </li>
              <li class="rec" id="C-2567698">
                <a href="https://book.douban.com/subject/2567698/#" data-url="https://book.douban.com/subject/2567698/" data-desc="" data-title="书籍《三体》 (来自豆瓣) " data-pic="https://img1.doubanio.com/view/subject/l/public/s2768378.jpg" class="bn-sharing ">分享到</a>&nbsp;&nbsp;</li>

            </ul>
          </div>
          <div class="rec-sec">
                <span class="rec">
                  <a href="https://www.douban.com/share/recommend?sanity_key=_2eb44&amp;apikey=&amp;name=%E4%B8%89%E4%BD%93&amp;image=https%3A%2F%2Fimg1.doubanio.com%2Fview%2Fsubject%2Fs%2Fpublic%2Fs2768378.jpg&amp;redir=https%3A%2F%2Fbook.douban.com%2Fsubject%2F2567698%2F&amp;href=https%3A%2F%2Fbook.douban.com%2Fsubject%2F2567698%2F&amp;curl=&amp;type=book&amp;properties=%7B%22rating%22%3A%228.8%22%7D&amp;desc=%E2%80%9C%E5%9C%B0%E7%90%83%E5%BE%80%E4%BA%8B%E2%80%9D%E4%B8%89%E9%83%A8%E6%9B%B2%E4%B9%8B%E4%B8%80+%2F+%E5%88%98%E6%85%88%E6%AC%A3+%2F+%E9%87%8D%E5%BA%86%E5%87%BA%E7%89%88%E7%A4%BE" share-id="2567698" data-mode="plain" data-name="三体" data-type="book" data-desc="“地球往事”三部曲之一 / 刘慈欣 / 重庆出版社" data-href="https://book.douban.com/subject/2567698/" data-image="https://img1.doubanio.com/view/subject/s/public/s2768378.jpg" data-properties="{&quot;rating&quot;:&quot;8.8&quot;}" data-redir="https://book.douban.com/subject/2567698/vote?ck=uMUG" data-text="" data-apikey="" data-curl="" data-count="10" data-object_kind="1001" data-object_id="2567698" data-target_type="rec" data-target_action="0" data-action_props="{&quot;subject_url&quot;:&quot;https:\/\/book.douban.com\/subject\/2567698\/&quot;,&quot;subject_title&quot;:&quot;三体&quot;}" data-sanity_key="_2eb44" class="lnk-sharing lnk-douban-sharing">推荐</a></span>
          </div>
        </div>
        <br clear="all">
        <div class="related_info">
          <h2>
            <span class="">内容简介</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
          <div class="indent" id="link-report">
            <div class="">
              <style type="text/css" media="screen">.intro p{text-indent:2em;word-break:normal;}</style>
              <div class="intro">${bookDetail.contentValidity}</div>
            </div>
            <%--<link rel="stylesheet" type="text/css" href="css/report.css">
            <link rel="stylesheet" type="text/css" href="css/dialog.css">
            <link rel="stylesheet" type="text/css" href="css/report_dialog.css">--%>
            <h2>
              <span class="">作者简介</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
            <div class="indent ">
              <div class="">
                <style type="text/css" media="screen">.intro p{text-indent:2em;word-break:normal;}</style>
                <div class="intro">
                  ${bookDetail.author}:
                  <p>${bookDetail.authorValidity}</p>
                </div>
              </div>
            </div>


            <link rel="stylesheet" href="css/style_book_detail.css">
            <div id="author_subject" class="author-wrapper">
              <div data-reactroot="" class="author-subject"></div>
            </div>


            <div id="db-rec-section" class="block5 subject_show knnlike">
              <h2>
                <span class="">喜欢读"三体"的人也喜欢</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
              <div class="content clearfix">
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/3066477/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3066477&#39;, &#39;pos&#39;: 0, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s3078482.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/3066477/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3066477&#39;, &#39;pos&#39;: 0, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">三体Ⅱ</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/5363767/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;5363767&#39;, &#39;pos&#39;: 1, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s26012674.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/5363767/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;5363767&#39;, &#39;pos&#39;: 1, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">三体Ⅲ</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/1192090/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1192090&#39;, &#39;pos&#39;: 2, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s26040205.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/1192090/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1192090&#39;, &#39;pos&#39;: 2, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">球状闪电</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/3259440/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3259440&#39;, &#39;pos&#39;: 3, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s4610502.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/3259440/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3259440&#39;, &#39;pos&#39;: 3, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">白夜行</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/3211779/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3211779&#39;, &#39;pos&#39;: 4, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s3254244.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/3211779/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3211779&#39;, &#39;pos&#39;: 4, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">嫌疑人X的献身</a></dd>
                </dl>
                <dl class="clear"></dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/25862578/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;25862578&#39;, &#39;pos&#39;: 5, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s27264181.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/25862578/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;25862578&#39;, &#39;pos&#39;: 5, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">解忧杂货店</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/3266609/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3266609&#39;, &#39;pos&#39;: 6, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s5961934.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/3266609/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;3266609&#39;, &#39;pos&#39;: 6, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">流浪地球</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/1084336/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1084336&#39;, &#39;pos&#39;: 7, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s1103152.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/1084336/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1084336&#39;, &#39;pos&#39;: 7, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">小王子</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/1008145/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1008145&#39;, &#39;pos&#39;: 8, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s1070222.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/1008145/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;1008145&#39;, &#39;pos&#39;: 8, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">围城</a></dd>
                </dl>
                <dl class="">
                  <dt>
                    <a href="https://book.douban.com/subject/6082808/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;6082808&#39;, &#39;pos&#39;: 9, &#39;identifier&#39;: &#39;book-rec-books&#39;})">
                      <img class="m_sub_img" src="img/s6384944.jpg"></a>
                  </dt>
                  <dd>
                    <a href="https://book.douban.com/subject/6082808/" onclick="moreurl(this, {&#39;total&#39;: 10, &#39;clicked&#39;: &#39;6082808&#39;, &#39;pos&#39;: 9, &#39;identifier&#39;: &#39;book-rec-books&#39;})" class="">百年孤独</a></dd>
                </dl>
                <dl class="clear"></dl>
              </div>
            </div>
            <link rel="stylesheet" href="css/comment.css">
            <div class="mod-hd">
              <a id="say" class="redbutt j a_collect_btn rr big-link" name="cbtn-2567698" href="javascript:;" rel="nofollow" data-reveal-id="myModal">
                <span>我来说两句</span></a>

              <div id="myModal" class="reveal-modal">
                <h2>短评一句</h2>
                <textarea id="commentContent" rows="3" cols="68" ></textarea><br/>
                <input id="doComment" type="button" onclick="doComment()" value="提交">
                <a id="close-comment" class="close-reveal-modal">&#215;</a>
              </div>
              <h2>
                <span class="">短评</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·
                <span class="pl">&nbsp;(
                    <a href="https://book.douban.com/subject/2567698/comments/">全部 67762 条</a>)</span></h2>
            </div>
            <div class="nav-tab">
              <div class="tabs-wrapper  line">
                <a class="short-comment-tabs on-tab" href="https://book.douban.com/subject/2567698/hot" data-tab="hot">热门</a>
                <span>/</span>
                <a class="short-comment-tabs " href="https://book.douban.com/subject/2567698/new" data-tab="new">最新</a>
                <span>/</span>
                <a class="short-comment-tabs " href="https://book.douban.com/subject/2567698/follows" data-tab="follows">好友</a></div>
            </div>



            <div id="comment-list-wrapper" class="indent">


              <div id="comments" class="comment-list hot show">
                <ul>
                  <li class="comment-item" data-cid="474389258">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-474389258" class="vote-count">976</span>
                            <a href="javascript:;" id="btn-474389258" class="j vote-comment" data-cid="474389258">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/yuyan545/">亚比煞</a>
                            <span class="user-stars allstar40 rating" title="推荐"></span>
                            <span>2011-12-27</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">最牛逼的科幻是能把最疯狂的想象写的像新闻报道一样真实。</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="851912743">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-851912743" class="vote-count">344</span>
                            <a href="javascript:;" id="btn-851912743" class="j vote-comment" data-cid="851912743">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/kinglilychou/">张熊熊</a>
                            <span class="user-stars allstar30 rating" title="还行"></span>
                            <span>2014-10-07</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">论文笔的重要性。。。如何讲砸一个好故事。。。</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="325720516">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-325720516" class="vote-count">3050</span>
                            <a href="javascript:;" id="btn-325720516" class="j vote-comment" data-cid="325720516">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/frederickhfwang/">[已注销]</a>
                            <span class="user-stars allstar20 rating" title="较差"></span>
                            <span>2012-10-25</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">幼稚，各种。对人性、对社会的运作方式的理解处在小学生水准，对女人的想象处在童男子水准。另外就是文笔之差，叙事毫无技巧，语言之粗糙，之鄙俗，让人不忍卒读。上不了台面的东西，给两星，因为我品性中宽厚的那一面在发作，另外略略懂科幻迷的感情</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="837562522">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-837562522" class="vote-count">337</span>
                            <a href="javascript:;" id="btn-837562522" class="j vote-comment" data-cid="837562522">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/zoca/">S.A.M</a>
                            <span class="user-stars allstar10 rating" title="很差"></span>
                            <span>2014-08-18</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">不是一般的啰嗦。</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="425448896">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-425448896" class="vote-count">6011</span>
                            <a href="javascript:;" id="btn-425448896" class="j vote-comment" data-cid="425448896">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/thelongestyard/">方方土君</a>
                            <span class="user-stars allstar50 rating" title="力荐"></span>
                            <span>2011-08-14</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">一直认为写作是件很耗费体力与脑力的事情，特别是从新构架一个新的世界，一个文明。这需要你有丰富的尝试与思考，过去，我们从来不缺少天马行空的想象力，但是少有一个如刘慈欣般有着历史、物理学与哲学思考的作者。所以从这个角度来讲，三体的出现对中国科幻界绝对是幸事。霍金之前曾经警告过我们，如果有外星人，他们对地球也是恶意的。那时我不懂，在读完这本书时我回想自己小时候拍打小虫子时的情景。或许，在更高级别的文明里...</span>
                        <span class="hide-item full">一直认为写作是件很耗费体力与脑力的事情，特别是从新构架一个新的世界，一个文明。这需要你有丰富的尝试与思考，过去，我们从来不缺少天马行空的想象力，但是少有一个如刘慈欣般有着历史、物理学与哲学思考的作者。所以从这个角度来讲，三体的出现对中国科幻界绝对是幸事。霍金之前曾经警告过我们，如果有外星人，他们对地球也是恶意的。那时我不懂，在读完这本书时我回想自己小时候拍打小虫子时的情景。或许，在更高级别的文明里，你我只不过是虫子。</span>
                        <span class="expand">(
                            <a href="javascript:;">展开</a>)</span></p>
                    </div>
                  </li>
                </ul>
              </div>



              <div id="comments" class="comment-list new noshow">
                <ul>
                  <li class="comment-item" data-cid="1776359085">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-1776359085" class="vote-count">0</span>
                            <a href="javascript:;" id="btn-1776359085" class="j vote-comment" data-cid="1776359085">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/modern597/">modern</a>
                            <span class="user-stars allstar40 rating" title="推荐"></span>
                            <span>2019-05-05</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">不是科幻迷，但还是被深深吸引了。</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="1776334522">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-1776334522" class="vote-count">0</span>
                            <a href="javascript:;" id="btn-1776334522" class="j vote-comment" data-cid="1776334522">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/183309820/">每天都要笑嘻嘻</a>
                            <span class="user-stars allstar50 rating" title="力荐"></span>
                            <span>2019-05-05</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">对科幻不太感兴趣 也不喜欢看科幻电影 但是我看到了更大的世界 从这套书</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="1776325527">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-1776325527" class="vote-count">0</span>
                            <a href="javascript:;" id="btn-1776325527" class="j vote-comment" data-cid="1776325527">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/182692242/">lyq</a>
                            <span class="user-stars allstar40 rating" title="推荐"></span>
                            <span>2019-05-05</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">汪淼地位最低</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="1776319303">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-1776319303" class="vote-count">0</span>
                            <a href="javascript:;" id="btn-1776319303" class="j vote-comment" data-cid="1776319303">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/174562881/">凌風追譯</a>
                            <span class="user-stars allstar40 rating" title="推荐"></span>
                            <span>2019-05-05</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">抛开文笔不说，里面宏大的世界观已经令青年的我深受震撼，这本书之后多次翻过，可能会影响我的一生。</span></p>
                    </div>
                  </li>
                  <li class="comment-item" data-cid="1776310610">
                    <div class="comment">
                      <h3>
                          <span class="comment-vote">
                            <span id="c-1776310610" class="vote-count">0</span>
                            <a href="javascript:;" id="btn-1776310610" class="j vote-comment" data-cid="1776310610">有用</a></span>
                        <span class="comment-info">
                            <a href="https://www.douban.com/people/185537771/">对方正在偷人...</a>
                            <span class="user-stars allstar50 rating" title="力荐"></span>
                            <span>2019-05-05</span></span>
                      </h3>
                      <p class="comment-content">
                        <span class="short">经典的开始</span></p>
                    </div>
                  </li>
                </ul>
              </div>



              <div id="comments" class="comment-list follows noshow">
                <ul>
                  <li class="comment-item">
                    <p class="blank-tip">你关注的人还没有写短评呢</p></li>
                </ul>
              </div>
            </div>
            <p>&gt;
              <a href="https://book.douban.com/subject/2567698/comments/">更多短评 67762 条</a></p>


            <link rel="stylesheet" href="css/816a7a3028fac67.css">
            <section class="reviews mod book-content">
              <header>
                <a href="book_review/${bookDetail.bookId}" rel="nofollow" class="create-review redbutt rr " data-isverify="True" data-verify-url="https://www.douban.com/accounts/phone/verify?redir=https://book.douban.com/subject/2567698/new_review">
                  <span>我要写书评</span></a>
                <h2>三体的书评 · · · · · ·
                  <span class="pl">(
                      <a href="https://book.douban.com/subject/2567698/reviews">全部 2178 条</a>)</span></h2>
              </header>
              <style>#gallery-topics-selection { position: fixed; width: 595px; padding: 40px 40px 33px 40px; background: #fff; border-radius: 10px; box-shadow: 0 2px 16px 0 rgba(0, 0, 0, 0.2); top: 50%; left: 50%; -webkit-transform: translate(-50%, -50%); transform: translate(-50%, -50%); z-index: 9999; } #gallery-topics-selection h1 { font-size: 18px; color: #007722; margin-bottom: 36px; padding: 0; line-height: 28px; font-weight: normal; } #gallery-topics-selection .gl_topics { border-bottom: 1px solid #dfdfdf; max-height: 298px; overflow-y: scroll; } #gallery-topics-selection .topic { margin-bottom: 24px; } #gallery-topics-selection .topic_name { font-size: 15px; color: #333; margin: 0; line-height: inherit; } #gallery-topics-selection .topic_meta { font-size: 13px; color: #999; } #gallery-topics-selection .topics_skip { display: block; cursor: pointer; font-size: 16px; color: #3377AA; text-align: center; margin-top: 33px; } #gallery-topics-selection .topics_skip:hover { background: transparent; } #gallery-topics-selection .close_selection { position: absolute; width: 30px; height: 20px; top: 46px; right: 40px; background: #fff; color: #999; text-align: right; } #gallery-topics-selection .close_selection:hover{ background: #fff; color: #999; }</style>
              <div class="review_filter">
                <a href="javascript:;;" class="cur" data-sort="">热门</a>/
                <a href="javascript:;;" data-sort="time">最新</a>/
                <a href="javascript:;;" data-sort="follow">好友</a></div>


              <div class="review-list  ">
                <div data-cid="1342728">
                  <div class="main review-item" id="1342728">
                    <header class="main-hd">
                      <a href="https://www.douban.com/people/yinxiang/" class="avator">
                        <img width="24" height="24" src="img/u1228445-130.jpg"></a>
                      <a href="https://www.douban.com/people/yinxiang/" class="name">胤祥</a>
                      <span class="allstar40 main-title-rating" title="推荐"></span>
                      <span content="2008-04-03" class="main-meta">2008-04-03 03:20:04</span></header>
                    <div class="main-bd">
                      <h2>
                        <a href="book_review">《三体》：当代史的科幻书写</a></h2>
                      <div id="review_1342728_short" class="review-short" data-rid="1342728">
                        <div class="short-content">评论刘慈欣的《三体》是件困难的事情，因为可以选择的角度太多。反复思量过后挑了这个角度，在我看来，写一部好的科幻小说，或者一部适合评论家们的科幻小说都不是难事，但是当作家的心思并不是用在这些上面，而是捎带着完成了这两件事的时候，就并不是那么容易了。很容易看出... &nbsp;(
                          <a href="javascript:;" id="toggle-1342728-copy" class="unfold" title="展开">展开</a>)</div></div>
                      <div id="review_1342728_full" class="hidden">
                        <div id="review_1342728_full_content" class="full-content"></div>
                      </div>
                      <div class="action">
                        <a href="javascript:;" class="action-btn up" data-rid="1342728" title="有用">
                          <img src="img/up.png">
                          <span id="r-useful_count-1342728">1237</span></a>
                        <a href="javascript:;" class="action-btn down" data-rid="1342728" title="没用">
                          <img src="img/down.png">
                          <span id="r-useless_count-1342728">314</span></a>
                        <a href="https://book.douban.com/review/1342728/#comments" class="reply ">201回应</a>
                        <a href="javascript:;;" class="fold hidden">收起</a></div>
                    </div>
                  </div>
                </div>
                <div data-cid="1347293">
                  <div class="main review-item" id="1347293">
                    <header class="main-hd">
                      <a href="https://www.douban.com/people/amure/" class="avator">
                        <img width="24" height="24" src="img/u1149007-1.jpg"></a>
                      <a href="https://www.douban.com/people/amure/" class="name">小蓟·夏静好</a>
                      <span class="allstar50 main-title-rating" title="力荐"></span>
                      <span content="2008-04-08" class="main-meta">2008-04-08 09:25:48</span></header>
                    <div class="main-bd">
                      <h2>
                        <a href="https://book.douban.com/review/1347293/">,外星人，躲在暗处</a></h2>
                      <div id="review_1347293_short" class="review-short" data-rid="1347293">
                        <div class="short-content">三个质量相同或相近的物体，会在引力作用下进行着无规律、永不重复的复杂运动。《三体》那本书里，半人马座的三颗星，就是“三体运动”中的“三体”，三颗恒星的光和热蕴育了一种智慧生命。 只是，太阳有3颗，是件麻烦事儿——有时太热，有时又太冷。那里的人把太阳正常的时期... &nbsp;(
                          <a href="javascript:;" id="toggle-1347293-copy" class="unfold" title="展开">展开</a>)</div></div>
                      <div id="review_1347293_full" class="hidden">
                        <div id="review_1347293_full_content" class="full-content"></div>
                      </div>
                      <div class="action">
                        <a href="javascript:;" class="action-btn up" data-rid="1347293" title="有用">
                          <img src="img/up.png">
                          <span id="r-useful_count-1347293">869</span></a>
                        <a href="javascript:;" class="action-btn down" data-rid="1347293" title="没用">
                          <img src="img/down.png">
                          <span id="r-useless_count-1347293">135</span></a>
                        <a href="https://book.douban.com/review/1347293/#comments" class="reply ">120回应</a>
                        <a href="javascript:;;" class="fold hidden">收起</a></div>
                    </div>
                  </div>
                </div>
                <div data-cid="6146948">
                  <div class="main review-item" id="6146948">
                    <header class="main-hd">
                      <a href="https://www.douban.com/people/3295794/" class="avator">
                        <img width="24" height="24" src="img/u3295794-1.jpg"></a>
                      <a href="https://www.douban.com/people/3295794/" class="name">奥德赛的暗流</a>
                      <span class="allstar50 main-title-rating" title="力荐"></span>
                      <span content="2013-07-04" class="main-meta">2013-07-04 09:47:03</span></header>
                    <div class="main-bd">
                      <h2>
                        <a href="https://book.douban.com/review/6146948/">信卢瑟，永世不得超生</a></h2>
                      <div id="review_6146948_short" class="review-short" data-rid="6146948">
                        <div class="short-content">（写在前面的补记：这是几年前写的书评了，当年还只能以个人直觉的感受去否定里面人物的思维，现在对社会学和经济学了解得多了一些以后，才发现卢瑟社会的本质是极高的交易成本和极大的资源浪费，由于频繁的内斗和屠杀导致大量本来能从事生产和发展的人力和资源都被毁灭掉了，... &nbsp;(
                          <a href="javascript:;" id="toggle-6146948-copy" class="unfold" title="展开">展开</a>)</div></div>
                      <div id="review_6146948_full" class="hidden">
                        <div id="review_6146948_full_content" class="full-content"></div>
                      </div>
                      <div class="action">
                        <a href="javascript:;" class="action-btn up" data-rid="6146948" title="有用">
                          <img src="img/up.png">
                          <span id="r-useful_count-6146948">1365</span></a>
                        <a href="javascript:;" class="action-btn down" data-rid="6146948" title="没用">
                          <img src="img/down.png">
                          <span id="r-useless_count-6146948">1031</span></a>
                        <a href="https://book.douban.com/review/6146948/#comments" class="reply ">1095回应</a>
                        <a href="javascript:;;" class="fold hidden">收起</a></div>
                    </div>
                  </div>
                </div>

                <!-- COLLECTED CSS --></div>
              <p class="pl">&gt;
                <a href="https://book.douban.com/subject/2567698/reviews">更多书评2178篇</a></p>
            </section>

          </div>
        </div>
      </div>
      <div class="aside" style="position: static; left: 1171.5px; right: auto; bottom: 200px; top: auto;">
        <div id="dale_book_subject_top_right"></div>
        <div class="gray_ad">
          <h2>
            <span class="">在豆瓣书店有售</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
          <div class="market-banner">
            <span class="title">纸质版&nbsp;</span>
            <span class="price">18.40元</span>
            <span class="price">
                  <del>23.00元</del></span>
            <span class="promotion-info">满48元包邮</span>
            <span class="actions">
                  <a class="buy-btn buy" target="_blank" href="https://market.douban.com/cart/checkout/?sku_id=144030&amp;utm_campaign=douban_book_subject_buy_btn&amp;utm_source=douban&amp;utm_medium=pc_web">去购买</a>
                  <a class="buy-btn btn-cart" href="javascript:;" data-id="144030">加入购物车</a>
                  <a class="gocart hide" target="_blank" href="https://market.douban.com/cart/?source=book">查看</a></span>
          </div>
        </div>
        <style type="text/css" media="screen">.add2cartContainer{overflow:hidden;vertical-align:bottom;line-height:1}.add2cartContainer .add2cart{margin-right:0;display:inline-block}#buyinfo .bs{margin:0}#buyinfo li{padding:10px 0;position:relative;line-height:1;border-bottom:1px solid #eaeaea}#buyinfo li a:hover{background-image:none !important}#buyinfo li a:hover .buylink-price{background:#37a}#buyinfo li .publish,#buyinfo li .other-activity{margin-top:5px}#buyinfo li .publish a,#buyinfo li .other-activity a{color:#999}#buyinfo li .publish a:hover,#buyinfo li .other-activity a:hover{color:#37a;background:none;opacity:0.5;filter:alpha(opacity=50)}#buyinfo li .buylink-price{position:absolute;right:90px;text-align:right}#buyinfo .more-info{color:#aaa;margin:6px 0 -2px 0}#buyinfo .more-ebooks{padding:10px 0;color:#37a;cursor:pointer}#buyinfo .price-page{border-bottom:0;padding:15px 0 0}#buyinfo .saved-price{display:none;margin-left:5px}#buyinfo .cart-tip{float:right;padding-right:5px}#buyinfo #buyinfo-ebook{margin-bottom:15px}#buyinfo #buyinfo-ebook .buylink-price{display:inline}#buyinfo #buyinfo-ebook li.no-border{border:0}#buyinfo-printed{margin-bottom:15px}#buyinfo-printed.no-border{border-bottom:0}#buyinfo-printed .more-ebooks{line-height:1;padding:10px 0;color:#37a;cursor:pointer;padding:10px 0 0}#buyinfo-report{display:none}#buyinfo-report .lnk-close-report{float:right;margin-top:-30px;line-height:14px}#buyinfo-report .item{margin-bottom:10px}#buyinfo-report .item input{vertical-align:text-bottom;*vertical-align:middle}#buyinfo-report .item label{margin:0 5px 0 2px}#buyinfo-report .item-submit .bn-flat{margin-right:10px}#buyinfo-report .item-price input{width:220px;border:1px solid #ccc;padding:4px}#buyinfo-report form{margin:5px 0 10px}#bi-report-btn{float:right;margin:2px 0;line-height:14px;display:none}.bi-vendor-report{color:#aaa}.bi-vendor-report-form{display:none;color:#111;margin:0 5px;line-height:25px}.gray_ad{padding:30px 20px 25px 20px;background:#f6f6f1}.gray_ad h2{margin-bottom:6px;font-size:15px}.gray_ad .ebook-tag{margin-top:5px;color:#999;font-size:12px}.bs.more-after{margin-bottom:0px}@media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi){#buyinfo li a:hover{background-image:url(https://img3.doubanio.com/f/book/fc4ff7f0a3a7f452f06d586540284b9738f2fe87/pics/book/cart/icon-brown@2x.png);background-size:16px 12px}}#intervenor-buyinfo .bs{margin:0}#intervenor-buyinfo li{position:relative;border-bottom:1px solid #eaeaea;padding:10px 0;line-height:1}#intervenor-buyinfo li .basic-info{color:#494949;font-size:14px;line-height:18px}#intervenor-buyinfo li a:hover .comment{color:#f67;opacity:0.75;filter:alpha(opacity=75)}#intervenor-buyinfo li a:hover .buy-btn{background:#fff;border:1px solid #e97e7e;border-radius:2px;color:#e97e7e}#intervenor-buyinfo li a:hover .buylink-price{background:#37a}#intervenor-buyinfo li .buylink-price{position:absolute;right:90px;text-align:right}#intervenor-buyinfo li .publish,#intervenor-buyinfo li .other-activity{margin-top:5px}#intervenor-buyinfo li .publish a,#intervenor-buyinfo li .other-activity a{color:#999}#intervenor-buyinfo li .publish a:hover,#intervenor-buyinfo li .other-activity a:hover{color:#37a;background:none;opacity:0.5;filter:alpha(opacity=50)}#intervenor-buyinfo .jd-buy-icon{float:left;margin-right:3px}#intervenor-buyinfo .buy-btn{float:right;position:absolute;right:10px;bottom:3px;color:#9c9c9c;padding:0 12px;border:1px solid transparent}#intervenor-buyinfo .comment{color:#FF8C9C;margin:6px 0 -2px 0}#intervenor-buyinfo .price-page a{display:inline-block;line-height:16px !important}#intervenor-buyinfo .price-page{border-bottom:0;padding:15px 0 0}#intervenor-buyinfo .saved-price{display:none;margin-left:5px}#intervenor-buyinfo .cart-tip{float:right;padding-right:5px}#intervenor-buyinfo #buyinfo-ebook{margin-bottom:15px}#intervenor-buyinfo #buyinfo-ebook .buylink-price{display:inline}#intervenor-buyinfo #buyinfo-ebook li.no-border{border:0}#buyinfo-printed .presale-indicator{margin:0;width:auto;color:#999;text-indent:0;background:none}#buyinfo-printed .buylink-title{color:#999}#buyinfo-printed .second-hand{display:block;margin-top:30px}</style>
        <div class="gray_ad" id="buyinfo">
          <div id="buyinfo-ebook">
            <h2>
              <span class="">电子版有售</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
            <ul class="bs noline more-after ">
              <li class="">
                <a target="_blank" href="https://www.amazon.cn/mn/detailApp/ref=asc_df_B00RL93RS01556936999000/?asin=B00RL93RS0&amp;tag=douban_kindle-23&amp;creative=2384&amp;creativeASIN=B00RL93RS0&amp;linkCode=df0" class="">
                  <span class="">Kindle 电子书</span>
                  <span class="buylink-price">
                        <span class="">12.99 元</span></span>
                </a>
              </li>
            </ul>
          </div>
          <div id="buyinfo-printed">
            <h2>
              <span class="">在哪儿买这本书</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
            <ul class="bs noline more-after ">
              <span class="buylink-title">购买全新书</span>
              <li class="">
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=0&amp;vendor=jingdong&amp;srcpage=subject&amp;price=1590&amp;pos=1&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEwZVE1MVBCJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQMTB10TWxMdS0IJRmsQcEBwDGUhTWJXcR15BVAEeWZVQztlDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsDUBpdEQsUBVwrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsUAxIPXRtdCltXWwg%253D&amp;cntvendor=3&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="">
                  <span class="">京东商城</span></a>
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=0&amp;vendor=jingdong&amp;srcpage=subject&amp;price=1590&amp;pos=1&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEwZVE1MVBCJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQMTB10TWxMdS0IJRmsQcEBwDGUhTWJXcR15BVAEeWZVQztlDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsDUBpdEQsUBVwrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsUAxIPXRtdCltXWwg%253D&amp;cntvendor=3&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="buylink-price ">
                  <span class="">15.90 元</span></a>
              </li>
              <li class="">
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=1&amp;vendor=dangdang&amp;srcpage=subject&amp;price=1587&amp;pos=2&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s2567698%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D20989573&amp;cntvendor=3&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="">
                  <span class="">当当网</span></a>
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=1&amp;vendor=dangdang&amp;srcpage=subject&amp;price=1587&amp;pos=2&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s2567698%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D20989573&amp;cntvendor=3&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="buylink-price ">
                  <span class="">15.87 元</span></a>
                <span class="presale-indicator">
                      <span class="">预售</span></span>
                <div class="more-info">
                  <span class="buyinfo-promotion">图书换购</span></div>
              </li>
              <!-- duozhuayu -->
              <span class="buylink-title second-hand">购买二手书</span>
              <li class="">
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=0&amp;vendor=duozhuayu&amp;srcpage=subject&amp;price=3979&amp;pos=1&amp;url=https%3A%2F%2Fwww.duozhuayu.com%2Fbooks%2F46926011048136288%3Futm_medium%3Dweb%26utm_source%3Ddouban&amp;cntvendor=3&amp;link2key=91d6370d3e&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="">
                  <span class="">多抓鱼</span></a>
                <a target="_blank" href="https://book.douban.com/link2/?lowest=1587&amp;pre=0&amp;vendor=duozhuayu&amp;srcpage=subject&amp;price=3979&amp;pos=1&amp;url=https%3A%2F%2Fwww.duozhuayu.com%2Fbooks%2F46926011048136288%3Futm_medium%3Dweb%26utm_source%3Ddouban&amp;cntvendor=3&amp;link2key=91d6370d3e&amp;srcsubj=2567698&amp;type=bkbuy&amp;subject=2567698" class="buylink-price ">
                  <span class="">39.80 元起</span></a>
              </li>
              <li class="price-page">
                <a href="https://book.douban.com/subject/2567698/buylinks">&gt; 查看3家网店价格 (15.87 元起)</a></li>
            </ul>
          </div>
          <div class="add2cartContainer ft no-border">
                <span class="add2cartWidget ll">
                  <a href="javascript:;" class="j  a_add2cart add2cart" name="2567698">
                    <span>+ 加入购书单</span></a>
                  <span class="color_gary book-in-cart hidden">已在购书单&nbsp;
                    <a href="https://book.douban.com/cart">查看</a>
                    <a class="delete-cart-item" rel="2567698" href="https://book.douban.com/cart">删除</a></span>
                </span>
          </div>
        </div>

        <style class="text/css">.presale-indicator { display: inline-block; *display: inline; *zoom: 1; width: 24px; height: 15px; line-height: 15px; background: url(https://img3.doubanio.com/f/book/1679c65572eac1371f9872807199dea6e55a7f06/pics/book/cart/presale_text.gif) no-repeat; text-indent: -9999px; vertical-align: middle; *vertical-align: 0px; _vertical-align: 2px; margin-left: 0.5em; }</style>
        <div class="gray_ad" id="borrowinfo">
          <h2>
            <span class="">在哪儿借这本书</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·</h2>
          <ul class="bs more-after">
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2Fwww.bplisn.net.cn%2FBookSearch.aspx%3FISBN%3D978-7-5366-9293-0&amp;subject=7536692935&amp;type=borrow&amp;library=10007&amp;link2key=91d6370d3e" target="_blank">北京市公共图书馆(2)</a></li>
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2Fipac.library.sh.cn%2Fipac20%2Fipac.jsp%3Faspect%3Dbasic_search%26profile%3Dsl%26index%3DISBN%26term%3D9787536692930&amp;subject=7536692935&amp;type=borrow&amp;library=10012&amp;link2key=91d6370d3e" target="_blank">上海市中心图书馆(43)</a></li>
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2Fopac.gzlib.gov.cn%2Fopac%2Fsearch%3Frows%3D10%26curlibcode%3DGT%26hasholding%3D1%26searchWay0%3Dmarc%26q0%3D%26logical0%3DAND%26q%3D9787536692930%26searchWay%3Disbn%26scWay%3Ddim%26searchSource%3Dreader&amp;subject=7536692935&amp;type=borrow&amp;library=10023&amp;link2key=91d6370d3e" target="_blank">广州其他馆藏(1)</a></li>
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2F58.154.49.3%3A8080%2Fopac%2Fopenlink.php%3FhistoryCount%3D1%26strText%3D978-7-5366-9293-0%26doctype%3DALL%26strSearchType%3Disbn%26match_flag%3Dforward%26displaypg%3D20%26sort%3DCATA_DATE%26orderby%3Ddesc%26showmode%3Dlist%26location%3DALL&amp;subject=7536692935&amp;type=borrow&amp;library=10010&amp;link2key=91d6370d3e" target="_blank">沈阳师范大学图书馆</a></li>
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2Fopac3.wzlib.cn%2Fopac%2Fsearch%3FsearchWay%3Disbn%26q%3D978-7-5366-9293-0%26booktype%3D%26marcformat%3D%26sortWay%3Dscore%26sortOrder%3Ddesc%26startPubdate%3D%26endPubdate%3D%26rows%3D10&amp;subject=7536692935&amp;type=borrow&amp;library=10020&amp;link2key=91d6370d3e" target="_blank">温州市图书馆</a></li>
            <li style="border: none">
              <a href="https://www.douban.com/link2/?url=http%3A%2F%2F222.177.237.197%3A8080%2FInDigLib%2Ffront%2FComplexSearch.action%3FcurrentPage%3D1%26select1%3Disbn%26select2%3D%26select3%3D%26text1%3D978-7-5366-9293-0%26text2%3D%26text3%3D%26pageSize%3D20%26condition%3D%26table%3Di_biblios%26type%3D%26videoType%3Dcomplex&amp;subject=7536692935&amp;type=borrow&amp;library=10021&amp;link2key=91d6370d3e" target="_blank">重庆图书馆</a></li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div id="dale_book_subject_top_middle"></div>
        <h2>
          <span class="">这本书的其他版本</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·
          <span class="pl">&nbsp;(
                <a href="https://book.douban.com/works/1044213">全部10</a>)</span></h2>
        <div class="indent">
          <ul>
            <li class="mb8 pl">
              <a href="https://book.douban.com/subject/26665423/">İthaki Yayınları版</a>2015-11 / 11人读过</li>
            <li class="mb8 pl">
              <a href="https://book.douban.com/subject/5938333/">貓頭鷹出版社版</a>2011-3-7 / 3074人读过 / 有售</li>
            <li class="mb8 pl">
              <a href="https://book.douban.com/subject/26427702/">重庆出版社版</a>2016-6-1 / 1222人读过 / 有售</li>
            <li class="mb8 pl">
              <a href="https://book.douban.com/subject/25841131/">Tor Books版</a>2014-11-11 / 465人读过 / 有售</li></ul>
        </div>
        <h2>
          <span class="">以下豆列推荐</span>&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·
          <span class="pl">&nbsp;(
                <a href="https://book.douban.com/subject/2567698/doulists">全部</a>)</span></h2>
        <div id="db-doulist-section" class="indent">
          <ul class="bs">
            <li class="">
              <a class="" href="https://www.douban.com/doulist/250576/" target="_blank">｜五颗星经典系列｜图书｜小说类｜</a>
              <span class="pl">(蜜蜂)</span></li>
            <li class="">
              <a class="" href="https://www.douban.com/doulist/217511/" target="_blank">推荐给你的大学读书单：那些值得关注的观念</a>
              <span class="pl">(jiaon)</span></li>
            <li class="">
              <a class="" href="https://www.douban.com/doulist/436036/" target="_blank">你好好睡，我好好读书。等你醒了我们聊柏拉图。</a>
              <span class="pl">(琼斯黄)</span></li>
            <li class="">
              <a class="" href="https://www.douban.com/doulist/1868931/" target="_blank">《罗辑思维》第一季推荐书籍</a>
              <span class="pl">(怪刺)</span></li>
            <li class="">
              <a class="" href="https://www.douban.com/doulist/2455132/" target="_blank">也许能改变你生活态度的书</a>
              <span class="pl">(𝗡𝗢𝗨𝗦)</span></li>
          </ul>
        </div>
        <div id="dale_book_subject_middle_mini"></div>
        <h2>谁读这本书?</h2>
        <div class="indent" id="collector">
          <div class="">
            <div class="ll">
              <a href="https://www.douban.com/people/191973437/">
                <img src="img/u191973437-1.jpg" class="pil" alt="世界残酷秘史"></a>
            </div>
            <div style="padding-left:60px">
              <a class="" href="https://www.douban.com/people/191973437/">世界残酷秘史</a>
              <br>
              <div class="pl ll">刚刚 读过</div>
              <br></div>
            <div class="clear"></div>
            <br>
            <div class="ul" style="margin-bottom:12px;"></div>
          </div>
          <div class="">
            <div class="ll">
              <a href="https://www.douban.com/people/178761225/">
                <img src="img/u178761225-1.jpg" class="pil" alt="丞相要蘸醋吃"></a>
            </div>
            <div style="padding-left:60px">
              <a class="" href="https://www.douban.com/people/178761225/">丞相要蘸醋吃</a>
              <br>
              <div class="pl ll">1分钟前 读过</div>
              <br></div>
            <div class="clear"></div>
            <br>
            <div class="ul" style="margin-bottom:12px;"></div>
          </div>
          <div class="">
            <div class="ll">
              <a href="https://www.douban.com/people/187783621/">
                <img src="img/u187783621-2.jpg" class="pil" alt="秋风_"></a>
            </div>
            <div style="padding-left:60px">
              <a class="" href="https://www.douban.com/people/187783621/">秋风_</a>
              <br>
              <div class="pl ll">17分钟前 读过</div>
              <span class="allstar50" title="力荐"></span>
              <br></div>
            <div class="clear"></div>
            <br>
            <div class="ul" style="margin-bottom:12px;"></div>
          </div>
          <p class="pl">&gt;
            <a href="https://book.douban.com/subject/2567698/doings">22420人在读</a></p>
          <p class="pl">&gt;
            <a href="https://book.douban.com/subject/2567698/collections">285477人读过</a></p>
          <p class="pl">&gt;
            <a href="https://book.douban.com/subject/2567698/wishes">107912人想读</a></p>
        </div>
        <!-- douban ad begin -->
        <div id="dale_book_subject_middle_right"></div>

        <!-- douban ad end -->
        <h2>二手市场</h2>
        <div class="indent">
          <ul class="bs">
            <li class="">
              <a class=" " href="https://book.douban.com/subject/2567698/offers">28本二手书欲转让</a>
              <span class="">(0.01 至 500元以上)</span></li>
            <li>
              <a href="https://book.douban.com/subject/2567698/new_offer" class="rr">&gt; 点这儿在豆瓣转让</a>有107912人想读,手里有一本闲着?</li>
            <li>
              <a href="https://www.duozhuayu.com/sell?utm_source=douban&amp;utm_medium=new_offer" class="rr">&gt; 多抓鱼</a>转让给其他二手平台？</li></ul>
        </div>
        <p class="pl">订阅关于三体的评论:
          <br>
          <span class="feed">
                <a href="https://book.douban.com/feed/subject/2567698/reviews">feed: rss 2.0</a></span>
        </p>
      </div>
      <div class="extra">
        <!-- douban ad begin -->
        <div id="dale_book_subject_bottom_super_banner"></div>

        <!-- douban ad end --></div>
    </div>
    <div id="footer">
      <span id="icp" class="fleft gray-link">© 2005－2019 douban.com, all rights reserved 北京豆网科技有限公司</span>
      <a href="https://www.douban.com/hnypt/variformcyst.py" style="display: none;"></a>
      <span class="fright">
          <a href="https://www.douban.com/about">关于豆瓣</a>·
          <a href="https://www.douban.com/jobs">在豆瓣工作</a>·
          <a href="https://www.douban.com/about?topic=contactus">联系我们</a>·
          <a href="https://www.douban.com/about?policy=disclaimer">免责声明</a>·
          <a href="https://help.douban.com/?app=book" target="_blank">帮助中心</a>·
          <a href="https://book.douban.com/library_invitation">图书馆合作</a>·
          <a href="https://www.douban.com/doubanapp/">移动应用</a>·
          <a href="https://www.douban.com/partner/">豆瓣广告</a></span>
    </div>
  </div>
  <!-- anson13-docker-->
  <div id="search_suggest" style="display: none; top: 78px; left: 593.906px;">
    <ul></ul>
  </div>
  <div></div>
</div>

</body>

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<%-- 计算评分 --%>
<script type="text/javascript">
  var one=${bookDetail.star.starOneNum};
  var two=${bookDetail.star.starTwoNum};
  var three=${bookDetail.star.starThreeNum};
  var four=${bookDetail.star.starFourNum};
  var five=${bookDetail.star.starFiveNum}
  var num = one + two + three + four + five;
  var star_ave = ((one*1)+(two*2)+(three*3)+(four*4)+(five*5))*2/num;
  $("#star_ave").text(star_ave.toFixed(1));
  $("#num").text(num);
  $("#star_one").css("width", one*100/num+"px").next().text((one*100/num).toFixed(1)+"%");
  $("#star_two").css("width", two*100/num+"px").next().text((two*100/num).toFixed(1)+"%");
  $("#star_three").css("width", three*100/num+"px").next().text((three*100/num).toFixed(1)+"%");
  $("#star_four").css("width", four*100/num+"px").next().text((four*100/num).toFixed(1)+"%");
  $("#star_five").css("width", five*100/num+"px").next().text((five*100/num).toFixed(1)+"%");

  function  doComment() {
    var comment_data = {
      bookId:"${bookDetail.bookId}",
      userId:"0",
      commentTime:new Date(),
      commentContent:$('#commentContent').val()
    }
    $.ajax({
      type:"post",
      url:"http://localhost:8080/amazon/book_comment_insert",
      contentType:"application/json",
      dataType:"json",
      data:JSON.stringify(comment_data),
      success:function (ret) {
        document.getElementById("close-comment").click();//模拟点击事件，或者使用jq，但是需要把jq对象转化为dom
        alert(ret.msg);
      },
      error:function (error) {
        console.log(error);
      }

    });
  }


</script>

</html>