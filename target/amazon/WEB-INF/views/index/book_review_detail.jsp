<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%>
<jsp:useBean id="timer" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <meta name="google-site-verification" content="ok0wCgT20tBBgo9_zat2iAcimtN4Ftf5ccsh092Xeyw">
    <title>书评</title>
    <meta name="baidu-site-verification" content="cZdR4xxR7RxmM4zE">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://m.douban.com/book/review/4679379//">
    <base href="http://localhost:8080/amazon/"/>
    <link href="css/book_review_detail/douban.css" rel="stylesheet" type="text/css">
    <link href="css/book_review_detail/_all.css" rel="stylesheet" type="text/css">
    <link href="css/book_review_detail/init.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/book_review_detail/41810ec613d43cc.css">
    <style type="text/css"></style>
    <link type="text/css" rel="stylesheet" href="css/book_review_detail/setting_standalone.css">
    <link type="text/css" rel="stylesheet" href="css/book_review_detail/report_dialog.css">
    <link rel="stylesheet" href="css/book_review_detail/index.css">
    <link rel="stylesheet" href="css/book_review_detail/style.min.css">
    <style type="text/css">.author-wrap { margin-bottom: 40px; } .gallery_topic { display: block; border-radius: 2px; border: 1px solid rgba(0, 0, 0, 0.15); padding: 20px; color: #000000; margin-bottom: 30px; overflow: hidden; width: 675px; box-sizing: border-box; } .gallery_topic:hover{ background: #fff; } .gallery_topic h2{ color: #333; line-height: 1; margin-bottom: 8px; font-weight: 500; } .gallery_topic .meta{ color: #999999; float: left; line-height: 1; } .gallery_topic .link { color: #37a; float: right; line-height: 1; } .gallery_topic .link:hover { color: #fff; background: #37a; }</style>
    <link rel="shortcut icon" href="https://img3.doubanio.com/favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  </head>
  
  <body class="vsc-initialized">

    <link href="css/book_review_detail/bundle.css" rel="stylesheet" type="text/css">
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
                        <a href="https://www.douban.com/accounts/logout?source=main&amp;ck=uMUG">退出</a></td>
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
            <li class="on">
              <a href="https://www.douban.com/" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-main&quot;,&quot;uid&quot;:&quot;131598133&quot;}">豆瓣</a></li>
            <li class="">
              <a href="https://book.douban.com/" target="_blank" data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-book&quot;,&quot;uid&quot;:&quot;131598133&quot;}">读书</a></li>
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
              <a href="https://book.douban.com/review/4679379/#more" class="bn-more">
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
    <link href="css/book_review_detail/bundle(1).css" rel="stylesheet" type="text/css">
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

    <div id="wrapper" class="book-content review-wrapper">
      <div id="content">
        <div class="grid-16-8 clearfix">
          <div class="article">
            <h1>
              <span property="v:summary">${bookReview.reviewTitle}</span></h1>
            <div>
              <div class="main" id="4679379">
                <a class="avatar author-avatar left" href="https://www.douban.com/people/3606444/">
                  <img width="48" height="48" src="${bookReview.image}"></a>
                <header class="main-hd">
                  <a href="https://www.douban.com/people/3606444/">
                    <span>${bookReview.userName}</span></a>  评论
                  <a href="https://book.douban.com/subject/1041007/">  ${bookReview.book.name}</a>
                  <span class="allstar50 main-title-rating" title="力荐"></span>
                  <span class="main-title-hide">5</span>
                  <span class="main-meta">
                    <fmt:formatDate value="${bookReview.reviewTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
                  </span>
                </header>
                <div class="main-bd">
                  <div id="link-report">
                    <div class="review-content clearfix" id="review-content">
                      ${bookReview.reviewContent}
                    </div>&nbsp;
                    <a rel="nofollow" href="javascript:;" data-rid="4679379" class="report report_review right">举报</a></div>
                  <div class="main-author"></div>
                </div>
                <div class="main-ft">
                  <div class="main-panel" name="4679379">
                    <div class="main-panel-useful" data-rid="4679379" data-is_owner="false" data-can_vote="true">
                      <button class="btn useful_count 4679379 ">有用 ${bookReview.love}</button>
                      <button class="btn useless_count 4679379 ">没用 ${bookReview.hate}</button>
                    </div>
                    <div class="main-sharing">
                      <style>.footer-sharing { text-align: right; }</style>
                      <div class="review-bar">
                        <div class="footer-sharing">
                          <div class="action-collect">
                            <a href="javascript:void(0)" data-id="4679379" data-cate="1012" data-canview="True" data-url="https://book.douban.com/review/4679379/" data-catename="" data-link="https://www.douban.com/people/131598133/doulists/all?add=4679379&amp;cat=1012" data-title="对奇洛的感想" data-picture="https://img3.doubanio.com/f/shire/a28ac64f34a48acd8d058b67be0be50a3d6315f3/pics/doulist_article.png" class="lnk-doulist-add collect-add" onclick="moreurl(this, { &#39;from&#39;:&#39;doulist-btn-1012-4679379-131598133&#39;})">
                              <span class="react-text">收藏</span>
                              <span class="react-num">1</span></a>
                          </div>
                          <div class="sharing" data-target="{&quot;url&quot;: &quot;https://book.douban.com/review/4679379/&quot;, &quot;desc&quot;: &quot;\u201c\u6211\u5728\u73af\u6e38\u4e16\u754c\u7684\u65f6\u5019\u9047\u5230\u4e86\u4ed6\u3002\u90a3\u65f6\u5019\u7684\u6211\u53ea\u662f\u4e00\u4e2a\u611a\u8822\u7684\u5e74\u8f7b\u4eba\uff0c\u8111\u888b\u91cc\u88c5\u6ee1\u4e86\u4e00\u4e9b\u5947\u5947\u602a\u602a\u7684\u5173\u4e8e\u5584\u4e0e\u6076\u7684\u89c2\u70b9\u3002\u662f\u4f0f\u5730\u9b54\u4f7f\u6211\u8ba4\u8bc6\u5230\u6211\u662f\u591a\u4e48\u7684\u9519\u8bef\u548c\u65e0\u77e5\u3002\u5b9e\u9645\u4e0a\u5584\u4e0e\u6076\u662f\u4e0d\u5b58\u5728\u7684\uff0c\u53ea\u6709\u529b...&quot;, &quot;pic&quot;: &quot;&quot;, &quot;title&quot;: &quot;\u5bf9\u5947\u6d1b\u7684\u611f\u60f3&quot;}">
                            <div class="sharing-button">
                              <div class="sharing-douban">
                                <div class="rec-sec">
                                  <span class="rec">
                                    <a data-user_id="131598133" href="https://www.douban.com/share/recommend?sanity_key=_6c080&amp;apikey=&amp;object_kind=1012&amp;name=%E5%AF%B9%E5%A5%87%E6%B4%9B%E7%9A%84%E6%84%9F%E6%83%B3&amp;image=&amp;target_action=0&amp;redir=https%3A%2F%2Fbook.douban.com%2Freview%2F4679379%2F&amp;object_id=4679379&amp;heading=%E8%BD%AC%E5%8F%91%E5%88%B0%E8%B1%86%E7%93%A3&amp;target_type=rec&amp;btn_text=%E8%BD%AC%E5%8F%91&amp;href=https%3A%2F%2Fbook.douban.com%2Freview%2F4679379%2F&amp;action_props=%7B%22subject_url%22%3A%22https%3A%5C%2F%5C%2Fbook.douban.com%5C%2Fsubject%5C%2F1041007%5C%2F%22%2C%22review_title%22%3A%22%E5%AF%B9%E5%A5%87%E6%B4%9B%E7%9A%84%E6%84%9F%E6%83%B3%22%2C%22review_url%22%3A%22https%3A%5C%2F%5C%2Fbook.douban.com%5C%2Freview%5C%2F4679379%5C%2F%22%2C%22subject_title%22%3A%22%E5%93%88%E5%88%A9%C2%B7%E6%B3%A2%E7%89%B9%E4%B8%8E%E9%AD%94%E6%B3%95%E7%9F%B3%22%7D&amp;curl=&amp;type=com.douban.book&amp;properties=%7B%22href%22%3A%22https%3A%5C%2F%5C%2Fbook.douban.com%5C%2Fsubject%5C%2F1041007%5C%2F%22%2C%22name%22%3A%22%E5%93%88%E5%88%A9%C2%B7%E6%B3%A2%E7%89%B9%E4%B8%8E%E9%AD%94%E6%B3%95%E7%9F%B3%22%2C%22uid%22%3A%221041007%22%7D&amp;desc=%E2%80%9C%E6%88%91%E5%9C%A8%E7%8E%AF%E6%B8%B8%E4%B8%96%E7%95%8C%E7%9A%84%E6%97%B6%E5%80%99%E9%81%87%E5%88%B0%E4%BA%86%E4%BB%96%E3%80%82%E9%82%A3%E6%97%B6%E5%80%99%E7%9A%84%E6%88%91%E5%8F%AA%E6%98%AF%E4%B8%80%E4%B8%AA%E6%84%9A%E8%A0%A2%E7%9A%84%E5%B9%B4%E8%BD%BB%E4%BA%BA%EF%BC%8C%E8%84%91%E8%A2%8B%E9%87%8C%E8%A3%85%E6%BB%A1%E4%BA%86%E4%B8%80%E4%BA%9B%E5%A5%87%E5%A5%87%E6%80%AA%E6%80%AA%E7%9A%84%E5%85%B3%E4%BA%8E%E5%96%84%E4%B8%8E%E6%81%B6%E7%9A%84%E8%A7%82%E7%82%B9%E3%80%82%E6%98%AF%E4%BC%8F%E5%9C%B0%E9%AD%94%E4%BD%BF%E6%88%91%E8%AE%A4%E8%AF%86%E5%88%B0%E6%88%91%E6%98%AF%E5%A4%9A%E4%B9%88%E7%9A%84%E9%94%99%E8%AF%AF%E5%92%8C%E6%97%A0%E7%9F%A5%E3%80%82%E5%AE%9E%E9%99%85%E4%B8%8A%E5%96%84%E4%B8%8E%E6%81%B6%E6%98%AF%E4%B8%8D%E5%AD%98%E5%9C%A8%E7%9A%84%EF%BC%8C%E5%8F%AA%E6%9C%89%E5%8A%9B..." share-id="4679379" data-mode="plain" data-name="对奇洛的感想" data-type="com.douban.book" data-desc="“我在环游世界的时候遇到了他。那时候的我只是一个愚蠢的年轻人，脑袋里装满了一些奇奇怪怪的关于善与恶的观点。是伏地魔使我认识到我是多么的错误和无知。实际上善与恶是不存在的，只有力..." data-href="https://book.douban.com/review/4679379/" data-image="" data-properties="{&quot;href&quot;:&quot;https:\/\/book.douban.com\/subject\/1041007\/&quot;,&quot;name&quot;:&quot;哈利·波特与魔法石&quot;,&quot;uid&quot;:&quot;1041007&quot;}" data-redir="https://book.douban.com/static/dshare_proxy.html" data-text="" data-apikey="" data-curl="" data-count="10" data-object_kind="1012" data-object_id="4679379" data-target_type="rec" data-target_action="0" data-action_props="{&quot;subject_url&quot;:&quot;https:\/\/book.douban.com\/subject\/1041007\/&quot;,&quot;review_title&quot;:&quot;对奇洛的感想&quot;,&quot;review_url&quot;:&quot;https:\/\/book.douban.com\/review\/4679379\/&quot;,&quot;subject_title&quot;:&quot;哈利·波特与魔法石&quot;}" data-btn_text="转发" data-heading="转发到豆瓣" data-sanity_key="_6c080" class="lnk-sharing lnk-douban-sharing">转发</a></span>
                                </div>
                              </div>
                              <span class="sharing-indicator"></span>
                            </div>
                            <div class="sharing-layer is-hidden">
                              <div class="sharing-wechat">
                                <span class="sharing-icon__wechat">微信扫码</span>
                                <div class="sharing-wechat-qrcode"></div>
                              </div>
                              <ul class="sharing-list">
                                <li class="sharing-icon__weibo" data-share="weibo">新浪微博</li>
                                <li class="sharing-icon__qq" data-share="qq">QQ好友</li>
                                <li class="sharing-icon__qzone" data-share="qzone">QQ空间</li></ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div id="dale_book_review_after_readmore"></div>
              </div>
            </div>
            <ul class="top-tab tabs clearfix">
              <li class="selected">
                <a href="javascript:;">
                  <span>回应</span></a>
              </li>
              <li class="">
                <a href="https://book.douban.com/review/4679379/?tab=recommendations#recommendations">
                  <span>转发</span></a>
              </li>
              <li class="">
                <a href="https://book.douban.com/review/4679379/?tab=collections#collections">
                  <span>收藏</span></a>
              </li>
            </ul>
            <div id="comments" class="comment-list" data-start="0" data-reply_length="90">

              <c:forEach items="${bookReview.reviewCommentList}" var="reviewComment">
                <div class="comment-item" id="7213620">
                  <div class="avatar left">
                    <a href="https://www.douban.com/people/ntcalmer/">
                      <img width="48" height="48" src="${reviewComment.image}" alt="${reviewComment.userName}"></a>
                  </div>
                  <div class="content report-comment">
                    <div class="header">
                      <a href="https://www.douban.com/people/ntcalmer/">${reviewComment.userName}</a>
                      <span>
                        <fmt:formatDate value="${reviewComment.rcommentTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
                      </span></div>
                    <p class="comment-text">
                      ${reviewComment.rcommentContent}
                    </p>
                    <div class="group_banned">
                    <span class="gact hidden p_u79978855 p_admin p_intern fright">&gt;
                      <a href="javascript:;" class="remove_comment">删除</a></span>
                    </div>
                  </div>
                </div>
              </c:forEach>

              <div id="last" data-last_page_start="0"></div>
              <section class="review-comment-form" id="add_comment">
                <div class="form-textarea-wrapper">
                  <div class="avatar ">
                    <a href="https://www.douban.com/people/131598133/">
                      <img width="48" height="48" src="${bookReview.image}" alt="电影中发现世界"></a>
                  </div>
                  <div class="form-field">
                    <textarea id="comment_content" class="form-textarea" placeholder=" 添加回应" rows="4" cols="64"></textarea>
                    <button class="add_comment js-verify-account" onclick="addComment()">加上去</button>
                  </div>
                </div>
              </section>
            </div>
          </div>

          <div class="aside">
            <!-- douban ad begin -->
            <div id="dale_book_review_top_right"></div>
            <div id="dale_book_review_middle_mini"></div>
            <!-- douban ad end -->
            <div class="sidebar-info-wrapper">
              <div class="sidebar-copy"></div>
              <div class="subject-title">
                <a href="book_detail/${bookReview.book.bookId}">&gt;&nbsp;${bookReview.book.name}</a></div>
              <div class="subject-img">
                <a href="https://book.douban.com/subject/1041007/">
                  <img alt="${bookReview.book.name}" title="${bookReview.book.name}" src="${bookReview.book.coverImage}"></a>
              </div>
              <div class="subject-info book-info">
                <ul class="info-list">
                  <li class="info-item">
                    <span class="info-item-key">作者:</span>
                    <span class="info-item-val">${bookReview.book.author}</span></li>
                  <li class="info-item">
                    <span class="info-item-key">出版:</span>
                    <span class="info-item-val">${bookReview.book.publish}</span></li>
                  <li class="info-item">
                    <span class="info-item-key">类型:</span>
                    <span class="info-item-val">${bookReview.book.type}</span></li>
                  <li class="info-item">
                    <span class="info-item-key">ISBN:</span>
                    <span class="info-item-val">${bookReview.book.isbn}</span></li>
                  <li class="info-item">
                    <span class="info-item-key">定价:</span>
                    <span class="info-item-val">${bookReview.book.price}</span></li>
                  <li class="info-item">
                    <span class="info-item-key">时间:</span>
                    <span class="info-item-val">
                      <fmt:formatDate value="${bookReview.book.publishTime}" type="date" pattern="yyyy-MM-dd"/>
                    </span></li>
                </ul>
              </div>
            </div>
          </div>


          <div class="extra"></div>
        </div>
      </div>
      <div id="footer">
        <div class="footer-extra"></div>
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
    <link type="text/css" rel="stylesheet" href="css/book_review_detail/dialog.css">

  </body>
  <script type="text/javascript">
    function addComment(){
      var data = {
        reviewId:${bookReview.reviewId},
        userId:${bookReview.userId},
        rcommentTime:new Date(),
        rcommentContent:$("#comment_content").val()
      }
      $.ajax({
        type:"post",
        url:"http://localhost:8080/amazon/review_comment_insert",
        dataType:"json",
        contentType:"application/json",
        data:JSON.stringify(data),
        success:function (ret) {
          $("#comment_content").val("");
          alert(ret.msg);
          window.location.reload();
        },
        errer:function (err) {
          console.log(err);
        }
      });
    }

  </script>

</html>