<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zh-CN" class="ua-windows ua-webkit book-new-nav">
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="google-site-verification" content="ok0wCgT20tBBgo9_zat2iAcimtN4Ftf5ccsh092Xeyw">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.douban.com/book/">
    <meta name="keywords" content="豆瓣读书,新书速递,畅销书,书评,书单">
    <meta name="description" content="记录你读过的、想读和正在读的书，顺便打分，添加标签及个人附注，写评论。根据你的口味，推荐适合的书给你。">
    <meta name="verify-v1" content="EYARGSAVd5U+06FeTmxO8Mj28Fc/hM/9PqMfrlMo8YA=">
    <meta property="wb:webmaster" content="7c86191e898cd20d">
    <meta property="qc:admins" content="1520412177364752166375">
    <title>豆瓣读书</title>
    <base href="http://localhost:8080/amazon/"/>
    <link href="css/master_book_list.css" rel="stylesheet" type="text/css">
    <link href="css/init_book_list.css" rel="stylesheet">
    <link rel="stylesheet" href="css/13419eb47c7c7dd7.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){

        $("#prev").click(function(){
          var left = $("#book-list").css('left');
          var pos = parseInt(left)+675;
          if(pos == 675)pos=-2025;
          switch(pos){
            case 0:
              $('#pot-1').addClass('active');
              $('#pot-4').removeClass('active');
              break;
            case -675:
              $('#pot-2').addClass('active');
              $('#pot-1').removeClass('active');
              break;
            case -1350:
              $('#pot-3').addClass('active');
              $('#pot-2').removeClass('active');
              break;
            case -2025:
              $('#pot-4').addClass('active');
              $('#pot-3').removeClass('active');
            default:break;
          }
          $('#book-list').css('left', pos+'px');
        });

        $("#next").click(function(){
          var left = $("#book-list").css('left');
          var pos = parseInt(left)-675;
          switch(pos){
            case 0:
              $('#pot-1').addClass('active');
              $('#pot-4').removeClass('active');
              break;
            case -675:
              $('#pot-2').addClass('active');
              $('#pot-1').removeClass('active');
              break;
            case -1350:
              $('#pot-3').addClass('active');
              $('#pot-2').removeClass('active');
              break;
            case -2025:
             $('#pot-4').removeClass('active');
            $('#pot-1').addClass('active');
            default:break;
          }
          if(pos == -2025)pos=0;
          $('#book-list').css('left', pos+'px');
        });

      });
    </script>

  </head>
  
  <body class="vsc-initialized">
    <link href="css/bundle_book_list_2.css" rel="stylesheet" type="text/css">
    <div id="db-global-nav" class="global-nav">
      <div class="bd">
        <div class="top-nav-info">
          <ul>
            <li>
              <a id="top-nav-doumail-link" href="https://www.douban.com/doumail/">豆邮</a></li>
            <li class="nav-user-account">
              <a target="_blank" href="https://accounts.douban.com/passport/setting/" class="bn-more">
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
                        <a href="https://www.douban.com/accounts/logout?source=book&amp;ck=onLy">退出</a></td>
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
          <a href="user/login" class="lnk-doubanapp">登录/注册</a>
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
              <a href="https://book.douban.com/#more" class="bn-more">
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
    <link href="css/bundle_book_list.css" rel="stylesheet" type="text/css">
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
              <a href="https://book.douban.com/mine?icn=index-nav">我读</a></li>
            <li>
              <a href="https://book.douban.com/updates?icn=index-nav">动态</a></li>
            <li>
              <a href="https://book.douban.com/recommended?icn=index-nav">豆瓣猜</a></li>
            <li>
              <a href="https://book.douban.com/tag/?icn=index-nav">分类浏览</a></li>
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
      <!-- douban ad begin -->
      <div id="dale_book_home_top_super_banner" class="ad-placeholder" style="margin: -18px 0 0;"></div>
      <!-- douban ad end -->
      <div id="content">
        <div class="grid-16-8 clearfix">
          <div class="article">


            <div class="section books-express ">
              <div class="hd">
                <h2 class="">
                  <span class="">新书速递</span>
                  <span class="link-more">
                    <a class="" href="https://book.douban.com/latest?icn=index-latestbook-all">更多»</a></span>
                </h2>
                <div class="slide-controls">
                  <ol class="slide-dots">
                    <li>
                      <a data-index="1" id="pot-1" href="javascript:;" class="active"></a>
                    </li>
                    <li>
                      <a data-index="2" id="pot-2" href="javascript:;" class=""></a>
                    </li>
                    <li>
                      <a data-index="3" id="pot-3" href="javascript:;" class=""></a>
                    </li>
                    <li>
                      <a data-index="4" id="pot-4" href="javascript:;" class=""></a>
                    </li>
                  </ol>
                  <div class="slide-btns">
                    <a href="javascript:;" class="prev" id="prev">‹</a>
                    <a href="javascript:;" class="next" id="next">›</a></div>
                </div>
              </div>
              <div class="bd">
                <div class="carousel">
                  <div id="book-list" class="slide-list" style="width: 4050px; left: 0px;" >

                    <c:forEach begin="0" end="3" varStatus="status">
                      <ul class="list-col list-col5 list-express slide-item">
                        <c:forEach var="book" items="${bookList}" begin="${status.index*10}" end="${status.index*10+9}">
                          <li class="">
                            <div class="cover">
                              <a href="<c:url value='/book_detail/${book.bookId}'/>" title="${book.name}">
                                <img src="${book.coverImage}" class="" width="115px" height="172px" alt="${book.name}">
                              </a>
                            </div>
                            <div class="info">
                              <div class="title">
                                <a class="" href="book_detail/${book.bookId}" title="${book.name}">${book.name}</a></div>
                              <div class="author">${book.author}</div>
                              <div class="more-meta">
                                <h4 class="title">${book.name}</h4>
                                <p>
                                  <span class="author">${book.author}</span>/
                                  <span class="year">${book.publishTime}</span>/
                                  <span class="publisher">${book.publish}</span></p>
                                <p class="abstract">${book.contentValidity}</p></div>
                            </div>
                          </li>
                        </c:forEach>
                      </ul>
                    </c:forEach>


                  </div>
                </div>
              </div>
            </div>



            <!-- douban ad begin -->
            <div id="dale_book_home_left_top" class="ad-placeholder" style="margin:-30px 0 30px;"></div>
            <!-- douban app end -->
            <div class="section book_information">
              <div class="hd">
                <h2 class="">
                  <span class="">图书资讯</span></h2>
                <div class="slide-controls">
                  <ol class="slide-dots">
                    <li>
                      <a data-index="1" href="javascript:;" class="active"></a>
                    </li>
                    <li>
                      <a data-index="2" href="javascript:;"></a>
                    </li>
                    <li>
                      <a data-index="3" href="javascript:;"></a>
                    </li>
                    <li>
                      <a data-index="4" href="javascript:;"></a>
                    </li>
                  </ol>
                  <div class="slide-btns">
                    <a href="https://book.douban.com/#" class="prev information-prev">‹</a>
                    <a href="https://book.douban.com/#" class="next information-next">›</a></div>
                </div>
              </div>
              <div class="bd">
                <div class="slide-block">
                  <ul class="col slide-list" style="width: 4050px; left: -675px;">
                    <li class="slide-item info-block clone">
                      <a href="https://book.douban.com/review/10069172/">
                        <div class="cover" style="background-image: url(https://img1.doubanio.com/view/subject/l/public/s29976318.jpg)"></div>
                        <div class="content">
                          <span class="title">沈书枝×绿妖×陆庆屹：故乡是已变得像一块琥珀</span>
                          <span class="meta">人民文学出版社</span>
                          <p class="abstract">付如初：各位书友，各位媒体的朋友，大家下午好！我们的活动马上开始。我先隆重的请上嘉宾和作者。绿妖老师，著名作家，她的《沉默也会歌唱》《我在故宫修文物》，包括最近的《世界尽头是北京》，都是好多读者朋...</p></div>
                      </a>
                    </li>
                    <li class="slide-item info-block">
                      <a href="https://www.douban.com/note/713570273/">
                        <div class="cover" style="background-image: url(https://img1.doubanio.com/view/note/l/public/p59726479.webp)"></div>
                        <div class="content">
                          <span class="title">李硕：《孔子大历史·后记》</span>
                          <span class="meta">李硕在新疆</span>
                          <p class="abstract">现在这本《孔子大历史：初民、贵族与寡头们的早期华夏》，是我2010年《贵族的黄昏：孔子 和他生活的时代》一书的增订版，这次增补的篇幅增加了一倍多，从八万字变成了二十多万。从最初写作到这次出版，跨度已逾十...</p></div>
                      </a>
                    </li>
                    <li class="slide-item info-block">
                      <a href="https://www.douban.com/note/716470217/">
                        <div class="cover" style="background-image: url(https://img3.doubanio.com/view/note/l/public/p60472472.webp)"></div>
                        <div class="content">
                          <span class="title">你可能不太相信，这是美国的另一半历史</span>
                          <span class="meta">浙江人民出版社</span>
                          <p class="abstract">提起美国的现代化进程，你首先想到的可能是一部工业发展史、科技创新史、金融腾飞史，以及一系列高光时刻，比如亨利·福特的大工厂流水线运作的场景、莱特兄弟第一次飞机试飞成功的瞬间、纳斯达克上下翻飞令人激...</p></div>
                      </a>
                    </li>
                    <li class="slide-item info-block">
                      <a href="https://www.douban.com/note/715816116/">
                        <div class="cover" style="background-image: url()"></div>
                        <div class="content">
                          <span class="title">豆瓣一周热门图书｜这部几乎无字的漫画，是一个大胆的光学实验</span>
                          <span class="meta">豆瓣读书</span>
                          <p class="abstract">四月最后一周，新上榜热门图书有《哈利的秘密树林》《返朴》《树下长椅》《推理时钟》《时间里的痴人》和《双性人巴尔班》《乌鸦》《异端》《写作之书》《料理的1000个魔法》《通鉴学》《鸟类的天赋》。 虚构类 *...</p></div>
                      </a>
                    </li>
                    <li class="slide-item info-block">
                      <a href="https://book.douban.com/review/10069172/">
                        <div class="cover" style="background-image: url(https://img1.doubanio.com/view/subject/l/public/s29976318.jpg)"></div>
                        <div class="content">
                          <span class="title">沈书枝×绿妖×陆庆屹：故乡是已变得像一块琥珀</span>
                          <span class="meta">人民文学出版社</span>
                          <p class="abstract">付如初：各位书友，各位媒体的朋友，大家下午好！我们的活动马上开始。我先隆重的请上嘉宾和作者。绿妖老师，著名作家，她的《沉默也会歌唱》《我在故宫修文物》，包括最近的《世界尽头是北京》，都是好多读者朋...</p></div>
                      </a>
                    </li>
                    <li class="slide-item info-block clone">
                      <a href="https://www.douban.com/note/713570273/">
                        <div class="cover" style="background-image: url(https://img1.doubanio.com/view/note/l/public/p59726479.webp)"></div>
                        <div class="content">
                          <span class="title">李硕：《孔子大历史·后记》</span>
                          <span class="meta">李硕在新疆</span>
                          <p class="abstract">现在这本《孔子大历史：初民、贵族与寡头们的早期华夏》，是我2010年《贵族的黄昏：孔子 和他生活的时代》一书的增订版，这次增补的篇幅增加了一倍多，从八万字变成了二十多万。从最初写作到这次出版，跨度已逾十...</p></div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="section popular-books">
              <div class="hd">
                <h2>
                  <span>最受关注图书榜</span>
                  <span class="link-more">
                    <a href="https://book.douban.com/chart?subcat=F&amp;icn=index-topchart-fiction">虚构类»</a></span>
                  <span class="link-more">
                    <a href="https://book.douban.com/chart?icn=index-topchart-nonfiction">非虚构类»</a></span>
                </h2>
              </div>
              <div class="bd">
                <ul class="list-col list-col2 list-summary s" data-dstat-areaid="61" data-dstat-mode="click,expose">
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30398273/?icn=index-topchart-subject">
                        <img src="img/s30013695.jpg" alt="世间万物" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30398273/?icn=index-topchart-subject" class="">世间万物</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.6</span></p>
                      <p class="author">作者：[美]艾米·里奇(Amy Leach)</p>
                      <p class="book-list-classification">科普&nbsp;/&nbsp;儿童文学</p>
                      <p class="extra-info"></p>
                      <p class="reviews">她只写了自然，我却读到了宇宙。 (
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://movie.douban.com/review/1012975/?icn=index-topchart-subject">故城评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30376420/?icn=index-topchart-subject">
                        <img src="img/s30015279.jpg" alt="一个人生活" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30376420/?icn=index-topchart-subject" class="">一个人生活</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar40 star-img"></span>
                        <span class="average-rating">7.7</span></p>
                      <p class="author">作者：(日) 谷川俊太郎</p>
                      <p class="book-list-classification">日本文学&nbsp;/&nbsp;随笔</p>
                      <p class="extra-info"></p>
                      <p class="reviews">他的自由，是那种与自然、与生活、与他人和谐相处的从容态度。 (
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/review/1004667/?icn=index-topchart-subject">小肉子评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30446684/?icn=index-topchart-subject">
                        <img src="img/s29992106.jpg" alt="六里庄遗事" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30446684/?icn=index-topchart-subject" class="">六里庄遗事</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.4</span></p>
                      <p class="author">作者：东东枪</p>
                      <p class="book-list-classification">中国文学&nbsp;/&nbsp;笔记小说</p>
                      <p class="extra-info">
                        <span class="meta-label">有电子书</span></p>
                      <p class="reviews">我们大都是这个世界的配角，我们的人生里处处都是闲笔。 (
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/review/9989740/?icn=index-topchart-subject">东东枪评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30354451/?icn=index-topchart-subject">
                        <img src="img/s30009593.jpg" alt="皮肤的秘密" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30354451/?icn=index-topchart-subject" class="">皮肤的秘密</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.2</span></p>
                      <p class="author">作者：[德]耶尔•阿德勒 (Yael Adler)&nbsp;/&nbsp;[德]卡提雅•史匹哲 (Katja Spitzer ) 绘</p>
                      <p class="book-list-classification">皮肤&nbsp;/&nbsp;科普</p>
                      <p class="extra-info"></p>
                      <p class="reviews">真心想对皮肤好，就不要为它做得太多。它完全可以照顾好自己。 (
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/review/1004071/?icn=index-topchart-subject">avia评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30367015/?icn=index-topchart-subject">
                        <img src="img/s29977887.jpg" alt="守夜" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30367015/?icn=index-topchart-subject" class="">守夜</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.7</span></p>
                      <p class="author">作者：[英] 萨拉·沃特斯</p>
                      <p class="book-list-classification">英国文学&nbsp;/&nbsp;长篇小说</p>
                      <p class="extra-info">
                        <span class="meta-label">有电子书</span></p>
                      <p class="reviews">故事之后的故事里，少女们学着成为生活的主人。 (
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/review/1002088/?icn=index-topchart-subject">公園仔评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30422566/?icn=index-topchart-subject">
                        <img src="img/s29888237.jpg" alt="观看王维的十九种方式" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30422566/?icn=index-topchart-subject" class="">观看王维的十九种方式</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.5</span></p>
                      <p class="author">作者：[美国] 艾略特.温伯格</p>
                      <p class="book-list-classification">诗歌&nbsp;/&nbsp;翻译</p>
                      <p class="extra-info"></p>
                      <p class="reviews">“伟大的诗作总是被不断变形，不断翻译，一首诗倘若只能原封不动，那它就无足观。” (
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/review/9694500/?icn=index-topchart-subject">纸上造物评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30428949/?icn=index-topchart-subject">
                        <img src="img/s30022018.jpg" alt="推理竞技场" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30428949/?icn=index-topchart-subject" class="">推理竞技场</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar40 star-img"></span>
                        <span class="average-rating">7.7</span></p>
                      <p class="author">作者：[日] 深水黎一郎</p>
                      <p class="book-list-classification">日系推理&nbsp;/&nbsp;午夜文库</p>
                      <p class="extra-info">
                        <span class="meta-label">有电子书</span></p>
                      <p class="reviews">本书将推理小说的解谜娱乐性放到最大。 (
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/review/1003110/?icn=index-topchart-subject">伸伸胳膊腿评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30355936/?icn=index-topchart-subject">
                        <img src="img/s30017714.jpg" alt="这世界如露水般短暂" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30355936/?icn=index-topchart-subject" class="">这世界如露水般短暂</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar40 star-img"></span>
                        <span class="average-rating">8.0</span></p>
                      <p class="author">作者：[日]小林一茶</p>
                      <p class="book-list-classification">俳句&nbsp;/&nbsp;日本文学</p>
                      <p class="extra-info">
                        <span class="meta-label">有电子书</span></p>
                      <p class="reviews">读一茶的俳句，仿佛让人看到了一位富于幽默和童真的杜甫。 (
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://movie.douban.com/review/1004684/?icn=index-topchart-subject">Albatross评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30218241/?icn=index-topchart-subject">
                        <img src="img/s29952659.jpg" alt="建筑师" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://book.douban.com/subject/30218241/?icn=index-topchart-subject" class="">建筑师</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar50 star-img"></span>
                        <span class="average-rating">9.3</span></p>
                      <p class="author">作者：(美) 大卫·马祖凯利</p>
                      <p class="book-list-classification">漫画&nbsp;/&nbsp;图像小说</p>
                      <p class="extra-info"></p>
                      <p class="reviews">虽然是一本漫画，它在文学性上也是极为出色和成熟的，绝对无愧于图像小说这个称号。 (
                        <a onclick="moreurl(this, {from:&#39;pop_fiction&#39;})" href="https://movie.douban.com/review/1002792/?icn=index-topchart-subject">陳分奇评论</a>)</p></div>
                  </li>
                  <li class="">
                    <div class="cover">
                      <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30304858/?icn=index-topchart-subject">
                        <img src="img/s29986963.jpg" alt="色情" class=""></a>
                    </div>
                    <div class="info">
                      <h4 class="title">
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://book.douban.com/subject/30304858/?icn=index-topchart-subject" class="">色情</a></h4>
                      <p class="entry-star-small">
                        <span class="allstar45 star-img"></span>
                        <span class="average-rating">8.3</span></p>
                      <p class="author">作者：[法] 乔治·巴塔耶</p>
                      <p class="book-list-classification">哲学&nbsp;/&nbsp;文化研究</p>
                      <p class="extra-info"></p>
                      <p class="reviews">表演本身比内容更重要。至于，死亡、祭祀和色情到底是不是有关系，这都在其次。 (
                        <a onclick="moreurl(this, {from:&#39;pop_nonfiction&#39;})" href="https://music.douban.com/review/1004741/?icn=index-topchart-subject">lolitalin评论</a>)</p></div>
                  </li>
                </ul>
              </div>
            </div>
            <!-- douban ad begin -->
            <div id="dale_book_home_left_middle" class="ad-placeholder" style="margin:-50px 0 30px;"></div>
            <!-- douban app end -->
            <div id="reviews" class="section">
              <div class="reviews-hd">
                <h2>最受欢迎的书评
                  <span>
                    <a href="https://book.douban.com/review/best/">更多热门书评»</a></span>
                  <span>
                    <a href="https://book.douban.com/review/latest/">最新书评»</a></span>
                </h2>
              </div>
              <div class="reviews-bd">
                <div class="review ">
                  <div class="review-hd">
                    <a href="https://book.douban.com/review/9594123/">
                      <img src="img/s29820901.jpg" alt="《动物博物馆》丨用这本书为孩子建立一个立体纵深的动物知识科学体系"></a>
                  </div>
                  <div class="review-bd">
                    <h3>
                      <a href="https://book.douban.com/review/9594123/">《动物博物馆》丨用这本书为孩子建立一个立体纵深的动物知识科学体系</a></h3>
                    <div class="review-meta">
                      <a href="https://www.douban.com/people/132815572/">火残翼</a>评论
                      <a href="https://book.douban.com/review/9594123/">《动物博物馆》</a>
                      <span class="allstar50"></span>
                    </div>
                    <div class="review-content">《动物博物馆》是一本动物手绘科普大百科全书，这本书结构清晰严谨，涉及到的科学知识专业、丰富；收录的超过1500幅的动物手绘图鉴，逼真、生动而有灵气；最具特色的版块——“生存现状”，来自《国际自然及自然...
                      <a href="https://book.douban.com/review/9594123/">(全文)</a></div>
                  </div>
                </div>
                <div class="review ">
                  <div class="review-hd">
                    <a href="https://book.douban.com/review/9590168/">
                      <img src="img/s29211179.jpg" alt="英语单词大书打开的方式有几种"></a>
                  </div>
                  <div class="review-bd">
                    <h3>
                      <a href="https://book.douban.com/review/9590168/">英语单词大书打开的方式有几种</a></h3>
                    <div class="review-meta">
                      <a href="https://www.douban.com/people/166556998/">密斯陈</a>评论
                      <a href="https://book.douban.com/review/9590168/">《英语单词大书》</a>
                      <span class="allstar50"></span>
                    </div>
                    <div class="review-content">最近看到如果你觉得“书抄不抄无所谓，便宜就好”，就太天真了这篇文章的时候，我都快气晕了。现在的人盗版就算了，竟然偷都能偷到错误连篇。浪费家长的钱都是小事，现在的家长本身陪孩子的时间不是很多，仅有的...
                      <a href="https://book.douban.com/review/9590168/">(全文)</a></div>
                  </div>
                </div>
                <div class="review ">
                  <div class="review-hd">
                    <a href="https://book.douban.com/review/9565757/">
                      <img src="img/s29903740.jpg" alt="3个要素揭开记忆的真相"></a>
                  </div>
                  <div class="review-bd">
                    <h3>
                      <a href="https://book.douban.com/review/9565757/">3个要素揭开记忆的真相</a></h3>
                    <div class="review-meta">
                      <a href="https://www.douban.com/people/179375681/">夏夜蝉声</a>评论
                      <a href="https://book.douban.com/review/9565757/">《记忆的常识》</a>
                      <span class="allstar40"></span>
                    </div>
                    <div class="review-content">人类对脑科学一直在探索，医学发展至今，虽然攻克了许许多多的问题，但对大脑的研究依然属于雾里看花，一知半解。大脑是生活中我们每个人都随时使用的，比如辨别方向、学习、工作等等，这些都必然要使用到大脑的...
                      <a href="https://book.douban.com/review/9565757/">(全文)</a></div>
                  </div>
                </div>
                <div class="review last">
                  <div class="review-hd">
                    <a href="https://book.douban.com/review/9580637/">
                      <img src="img/s29807367.jpg" alt="将春日装一壶，带回家"></a>
                  </div>
                  <div class="review-bd">
                    <h3>
                      <a href="https://book.douban.com/review/9580637/">将春日装一壶，带回家</a></h3>
                    <div class="review-meta">
                      <a href="https://www.douban.com/people/125610158/">申仙</a>评论
                      <a href="https://book.douban.com/review/9580637/">《播种人的手绘日记》</a>
                      <span class="allstar40"></span>
                    </div>
                    <div class="review-content">当初上学那会流行过一句诗，现在用得多了反倒显得不稀奇，读作“人间有味是清欢”。语出自文豪苏轼，难得的婉约风格，单看这一句美则美矣，可是细咂摸下来总有点高屋建瓴，可连上头前两句则气象一变——雪沫乳花...
                      <a href="https://book.douban.com/review/9580637/">(全文)</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="aside">
            <!-- douban ad begin -->
            <div id="dale_book_home_top_right" class="s ad-placeholder" data-dstat-areaid="51" data-dstat-mode="click,expose" style="margin-top: 30px;"></div>
            <!-- douban ad end -->
            <!-- douban ad begin -->
            <div id="dale_book_home_top_right2" class="ad-placeholder"></div>
            <!-- douban ad end -->
            <h2 class="">
              <span class="">热门标签</span>
              <span class="link-more">
                <a class="" href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-all">所有热门标签»</a></span>
            </h2>
            <ul class="hot-tags-col5 s" data-dstat-areaid="54" data-dstat-mode="click,expose">
              <li>
                <ul class="clearfix">
                  <li class="tag_title">文学</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%B0%8F%E8%AF%B4" class="tag">小说</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E9%9A%8F%E7%AC%94" class="tag">随笔</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E6%97%A5%E6%9C%AC%E6%96%87%E5%AD%A6" class="tag">日本文学</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E6%95%A3%E6%96%87" class="tag">散文</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E8%AF%97%E6%AD%8C" class="tag">诗歌</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%AB%A5%E8%AF%9D" class="tag">童话</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%90%8D%E8%91%97" class="tag">名著</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E6%B8%AF%E5%8F%B0" class="tag">港台</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E6%96%87%E5%AD%A6" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
              <li>
                <ul class="clearfix">
                  <li class="tag_title">流行</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E6%BC%AB%E7%94%BB" class="tag">漫画</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E6%8E%A8%E7%90%86" class="tag">推理</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%BB%98%E6%9C%AC" class="tag">绘本</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E9%9D%92%E6%98%A5" class="tag">青春</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%A7%91%E5%B9%BB" class="tag">科幻</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E8%A8%80%E6%83%85" class="tag">言情</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%A5%87%E5%B9%BB" class="tag">奇幻</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E6%AD%A6%E4%BE%A0" class="tag">武侠</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E6%B5%81%E8%A1%8C" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
              <li>
                <ul class="clearfix">
                  <li class="tag_title">文化</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%8E%86%E5%8F%B2" class="tag">历史</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%93%B2%E5%AD%A6" class="tag">哲学</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E4%BC%A0%E8%AE%B0" class="tag">传记</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E8%AE%BE%E8%AE%A1" class="tag">设计</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%BB%BA%E7%AD%91" class="tag">建筑</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%94%B5%E5%BD%B1" class="tag">电影</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%9B%9E%E5%BF%86%E5%BD%95" class="tag">回忆录</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E9%9F%B3%E4%B9%90" class="tag">音乐</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E6%96%87%E5%8C%96" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
              <li>
                <ul class="clearfix">
                  <li class="tag_title">生活</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E6%97%85%E8%A1%8C" class="tag">旅行</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%8A%B1%E5%BF%97" class="tag">励志</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E6%95%99%E8%82%B2" class="tag">教育</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E8%81%8C%E5%9C%BA" class="tag">职场</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%BE%8E%E9%A3%9F" class="tag">美食</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%81%B5%E4%BF%AE" class="tag">灵修</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%81%A5%E5%BA%B7" class="tag">健康</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E5%AE%B6%E5%B1%85" class="tag">家居</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E7%94%9F%E6%B4%BB" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
              <li>
                <ul class="clearfix">
                  <li class="tag_title">经管</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%BB%8F%E6%B5%8E%E5%AD%A6" class="tag">经济学</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%AE%A1%E7%90%86" class="tag">管理</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E5%95%86%E4%B8%9A" class="tag">商业</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E9%87%91%E8%9E%8D" class="tag">金融</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E8%90%A5%E9%94%80" class="tag">营销</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%90%86%E8%B4%A2" class="tag">理财</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E8%82%A1%E7%A5%A8" class="tag">股票</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E4%BC%81%E4%B8%9A%E5%8F%B2" class="tag">企业史</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E7%BB%8F%E7%AE%A1" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
              <li>
                <ul class="clearfix">
                  <li class="tag_title">科技</li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%A7%91%E6%99%AE" class="tag">科普</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E4%BA%92%E8%81%94%E7%BD%91" class="tag">互联网</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%BC%96%E7%A8%8B" class="tag">编程</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1" class="tag">交互设计</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%AE%97%E6%B3%95" class="tag">算法</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E9%80%9A%E4%BF%A1" class="tag">通信</a></li>
                  <li>
                    <a href="https://book.douban.com/tag/%E7%A5%9E%E7%BB%8F%E7%BD%91%E7%BB%9C" class="tag">神经网络</a></li>
                  <li class="last">
                    <a href="https://book.douban.com/tag/?view=type&amp;icn=index-sorttags-hot#%E7%A7%91%E6%8A%80" class="tag more_tag">更多»</a></li>
                </ul>
              </li>
            </ul>
            <!-- douban ad begin -->
            <div id="dale_book_homepage_right_bottom" class="ad-placeholder"></div>
            <!-- douban ad end -->
            <div class="section weekly-top">
              <div class="hd">
                <h2>畅销图书榜</h2></div>
              <div class="bd">
                <ul class="nav-vendor">
                  <li class="on book-chart-hd" id="jd-book-chart-hd">
                    <img src="img/jd_chart_hover.png" width="18" height="18">
                    <span>京东</span></li>
                  <li class="book-chart-hd" id="dangdang-book-chart-hd">
                    <img src="img/dangdang_chart.png" width="18" height="18">
                    <span>当当</span></li>
                </ul>
                <ul class="list list-ranking">
                  <li class="item">
                    <span class="rank-num">1.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/30388796/" class="name" target="_blank">当动物有钱了</a>
                      <div class="author"></div>
                    </div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=3420&amp;pos=1&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIHZRtYFAcXBFIZWR0yEgRXHVIcBRs3EUQDS10iXhBeGh4cDF8QTwcKWUcYB0UHCwIRBVMSUhILDV4QRwYlZxR0LH8sbmZ3Uzd7A3dUZXU8GT5cRB4LOxhaFQsSB1YdWBQyFQJSHVwcARU3VR9aEQYiN1Uaa0dsyrHjw%252F6kHsat2s7TgjITN1UfXhcAEQRSGVkXABU3UiuClbXEpcfCxZ%252FXmpBlK2slMiIHZRhrSkZPWmUa%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWABQOXBxSCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=30388796" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">2.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/27036891/" class="name" target="_blank">交通工具开出来啦绘本系列（全20册）</a>
                      <div class="author">【韩】徐银英 等著/【韩】金真美 等绘</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=18880&amp;pos=2&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEQdcHlgVASJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQESDlAYWxYdS0IJRmtMQkRVVlA%252BZWBzVwJJWU1ccg8VUjxTDh5pVhpbEx4TAEkaWQQDFwxXGVAVBCIAUBxdEgsRAGUbXxQGFjdlG1olUHzf462DsLMO0%252F%252BUjp2VIgZlG14dBRcFUR9TEwESBGUca8yCpdH3iYKLiMePwitrJTI%253D%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWAhsCVhtYCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=27036891" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">3.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/26995877/" class="name" target="_blank">不许抠鼻子！</a>
                      <div class="author">（英）托尼· 罗斯</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=3640&amp;pos=3&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEQZTGVkSByJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQETAVcZXBAdS0IJRmtABhMEImMmUGEMfTYFBkh6E3JPXh5TDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxoCXBpbHQITBlYrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWAxQFVxxeCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=26995877" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">4.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/31019300/" class="name" target="_blank">AR涂色乐园（套装共6册）</a>
                      <div class="author">上海仙剑</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=1330&amp;pos=4&amp;url=https%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIHZRtYFAcXBFIZWR0yEgRVElocBhc3EUQDS10iXhBeGh4cDF8QTwcKWUcYB0UHCwIRB1waUhEHDV4QRwYla0J7FVoAYVJxZTNQAUdBSX0qSSVqRB4LZRxeEgQVDlYcaxUGEwNRK2sVAyJVO8Pto9q3tknP8ZrXmpBlGmsVBhYEUxhSEwERDlwfaxIyy4fizfmH24yNgJPMJTIiN2UrWyUBIlgRRgYlAw%253D%253D%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWAhsGXB9eCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=31019300" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">5.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/33403883/" class="name" target="_blank">复仇者联盟4终极档案</a>
                      <div class="author"></div>
                    </div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=4950&amp;pos=5&amp;url=https%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIHZRtYFAcXBFIZWR0yEgRRG1sSABI3EUQDS10iXhBeGlcJDBkNXg9JHUlSSkkFSRwSBFEbWxIAEhgMXgdIMm16V3koEktaZ095BRFLFAZSQywRS1QLWStcEAUUAFwYXCUCFgZRH2slAhM3B3WDo7TKouQHj7%252BNx4%252FCK1olAhYDURNcFAYTBFYSWCUFIt7VrI23kMuZ387TgjIiN2UraxUyETcKXwZIMhM%253D%26t%3DW1dCFFlQCxxKQgFHRE5XDVULR0UVARYHVRxZFR1LQglG&amp;srcsubj=&amp;type=bkbuy&amp;subject=33403883" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">6.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/4913064/" class="name" target="_blank">活着</a>
                      <div class="author">余华</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=1800&amp;pos=6&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEgZdGlwQACJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQITD1QcXhcdS0IJRmtBe2EFAXxSFGdWfVFaQW9YSmMmRT9DDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsDUBpdEwMQAFwrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsVAxoGUh5ZCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=4913064" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">7.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/6973970/" class="name" target="_blank">人间失格</a>
                      <div class="author">[日] 太宰治</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=1830&amp;pos=7&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEw5cHl0dBiJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQMbDlAdUxEdS0IJRmtLQxN0Vx1fFWd0BA5JDW9AU1kLWwlTDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsDUBtbFQIWAFQrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsUCxsCUxNfCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=6973970" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">8.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/26954760/" class="name" target="_blank">月亮与六便士</a>
                      <div class="author">[英] 威廉·萨默塞特·毛姆</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=2990&amp;pos=8&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEQdVG1sUBSJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQESB1UbWhIdS0IJRmtSfWVYLBMEEWBtXx15XUVYFnhSfTt1Dh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsDUBpSEwoWD1IrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWAhIHVRpcCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=26954760" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">9.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/30335893/" class="name" target="_blank">一看就停不下来的中国史</a>
                      <div class="author">最爱君</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=4360&amp;pos=9&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIHZRtYFAcXBFIZWR0yEgRQGV4VBRY3EUQDS10iXhBeGh4cDF8QTwcKWUcYB0UHCwIRAlceWxIGDV4QRwYldlBQFXgrZlJxehVaWWtZElUPUBhXRB4LOxhaFQsOB1QHWhITEg9eHloeBxc3Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sRABsOVhxaEAcSB1ErXCXbkrCDucnMnJjS3YxrJTIiN2UbaxYyTUMIRg%253D%253D%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsWBxACVRxfCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=30335893" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">10.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/26685750/" class="name" target="_blank">一堆好朋友</a>
                      <div class="author">[德]凯瑟提恩·舍尼</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=jingdong&amp;srcpage=bestseller&amp;price=3220&amp;pos=10&amp;url=http%3A%2F%2Funion-click.jd.com%2Fjdc%3Fe%3D%26p%3DAyIOZR5aEQISA1AYUyUCEgNdHFkWAiJDCkMFSjJLQhBaUAscSkIBR0ROVw1VC0dFFQIWD1IZWBUdS0IJRmtRe0hdDxw5fGB5eTRlPU1qS3wUHV1TDh43Uh5cEwUbBFIrWxEDFgNlK1sUMkBpja3tzaejG4Gx1MCKhTdUK1sQCxsAXRJYEgEVAFMrXCXbkrCDucnMnJjS3YxrJTIi%26t%3DW1dCFBBFC1pXUwkEAEAdQFkJBVsVBhoAVxhbCltXWwg%253D&amp;srcsubj=&amp;type=bkbuy&amp;subject=26685750" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                </ul>
                <ul class="list list-ranking" style="display: none;">
                  <li class="item">
                    <span class="rank-num">1.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/26647769/" class="name" target="_blank">人间失格</a>
                      <div class="author">太宰治</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=1750&amp;pos=1&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s26647769%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D23761145&amp;srcsubj=&amp;type=bkbuy&amp;subject=26647769" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">2.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/27666489/" class="name" target="_blank">董卿：做一个有才情的女子</a>
                      <div class="author">乔瑞玲</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=3130&amp;pos=2&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s27666489%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25223949&amp;srcsubj=&amp;type=bkbuy&amp;subject=27666489" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">3.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/27012154/" class="name" target="_blank">我喜欢生命本来的样子</a>
                      <div class="author">周国平</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=3600&amp;pos=3&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s27012154%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D24198400&amp;srcsubj=&amp;type=bkbuy&amp;subject=27012154" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">4.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/30162713/" class="name" target="_blank">流浪的地球</a>
                      <div class="author">刘慈欣</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=1360&amp;pos=4&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s30162713%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25259300&amp;srcsubj=&amp;type=bkbuy&amp;subject=30162713" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">5.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/30264297/" class="name" target="_blank">万般滋味，都是生活：丰子恺散文漫画精选集</a>
                      <div class="author">丰子恺</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=3050&amp;pos=5&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s30264297%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25308985&amp;srcsubj=&amp;type=bkbuy&amp;subject=30264297" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">6.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/4913064/" class="name" target="_blank">活着</a>
                      <div class="author">余华</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=2800&amp;pos=6&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s4913064%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25137790&amp;srcsubj=&amp;type=bkbuy&amp;subject=4913064" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">7.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/26954760/" class="name" target="_blank">月亮与六便士</a>
                      <div class="author">[英] 威廉·萨默塞特·毛姆</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=2990&amp;pos=7&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s26954760%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D24175371&amp;srcsubj=&amp;type=bkbuy&amp;subject=26954760" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">8.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/27137525/" class="name" target="_blank">墨菲定律(经典收藏版)</a>
                      <div class="author">张文成</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=2260&amp;pos=8&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s27137525%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25142121&amp;srcsubj=&amp;type=bkbuy&amp;subject=27137525" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">9.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/27607125/" class="name" target="_blank">生活需要仪式感</a>
                      <div class="author">李思圆</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=2830&amp;pos=9&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s27607125%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D25209814&amp;srcsubj=&amp;type=bkbuy&amp;subject=27607125" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                  <li class="item">
                    <span class="rank-num">10.</span>
                    <div class="book-info">
                      <a href="https://book.douban.com/subject/25969064/" class="name" target="_blank">神奇校车 桥梁书版</a>
                      <div class="author">乔安娜柯尔　著/布鲁斯迪根 图</div></div>
                    <a href="https://book.douban.com/link2/?pre=0&amp;vendor=dangdang&amp;srcpage=bestseller&amp;price=7500&amp;pos=10&amp;url=http%3A%2F%2Funion.dangdang.com%2Ftransfer.php%3Ffrom%3DP-306226-131598133-s25969064%26backurl%3Dhttp%3A%2F%2Fproduct.dangdang.com%2Fproduct.aspx%3Fproduct_id%3D23444350&amp;srcsubj=&amp;type=bkbuy&amp;subject=25969064" target="_blank">
                      <span class="buy-button">去购买</span></a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="block5">
              <h2 class="">
                <span class="">豆瓣图书250</span>
                <span class="link-more">
                  <a class="" href="https://book.douban.com/top250?icn=index-book250-all">更多»</a></span>
              </h2>
              <div class="content clearfix s" id="book_rec" data-dstat-areaid="58" data-dstat-mode="click,expose">
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1001885/?icn=index-book250-subject">
                      <img src="img/s3186863.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1001885/?icn=index-book250-subject">带一本书去巴黎</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1019568/?icn=index-book250-subject">
                      <img src="img/s1076932.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1019568/?icn=index-book250-subject">三国演义（全二册）</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1400705/?icn=index-book250-subject">
                      <img src="img/s1444578.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1400705/?icn=index-book250-subject">情人</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <div class="clearfix rr" style="width:100%"></div>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1292416/?icn=index-book250-subject">
                      <img src="img/s1556748.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1292416/?icn=index-book250-subject">香水</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/4207781/?icn=index-book250-subject">
                      <img src="img/s4124434.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/4207781/?icn=index-book250-subject">孩子你慢慢来</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/26878124/?icn=index-book250-subject">
                      <img src="img/s29164777.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/26878124/?icn=index-book250-subject">我的天才女友</a>
                    <p class="extra-info">
                      <span class="meta-label">有电子书</span></p>
                  </dd>
                </dl>
                <div class="clearfix rr" style="width:100%"></div>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1057244/?icn=index-book250-subject">
                      <img src="img/s1595557.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1057244/?icn=index-book250-subject">边城</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1085860/?icn=index-book250-subject">
                      <img src="img/s3248016.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/1085860/?icn=index-book250-subject">基督山伯爵</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <dl>
                  <dt>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/2297697/?icn=index-book250-subject">
                      <img src="img/s2756239.jpg" class="m_sub_img"></a>
                  </dt>
                  <dd>
                    <a onclick="moreurl(this, {from:&#39;top&#39;})" href="https://book.douban.com/subject/2297697/?icn=index-book250-subject">ZOO</a>
                    <p class="extra-info"></p>
                  </dd>
                </dl>
                <div class="clearfix rr" style="width:100%"></div>
              </div>
            </div>
            <div class="contact">
              <h2>联系我们</h2>
              <ul class="apply-links">
                <li>合作联系：
                  <img src="img/email_book.png"></li></ul>
            </div>
            <div class="contact mod">
              <h2>关注我们</h2>
              <ul class="embassy-list clearfix">
                <li>
                  <a href="https://site.douban.com/book/" target="_blank" class="icon-embassy-site"></a>
                  <a href="https://site.douban.com/book/" target="_blank" class="primary-link">豆瓣小站</a></li>
                <li>
                  <a href="http://weibo.com/doubandushu" target="_blank" class="icon-embassy-weibo"></a>
                  <a href="http://weibo.com/doubandushu" target="_blank" class="primary-link">微博</a></li>
                <li>
                  <a class="icon-embassy-weixin">
                    <div class="hover">
                      <img class="home-qrcode" src="img/home_qrcode@2x.jpg"></div>
                  </a>
                  <a class="primary-link" href="javascript:;">微信</a></li>
              </ul>
            </div>
            <!-- douban app begin -->
            <div class="s" data-dstat-areaid="60" data-dstat-mode="click,expose">
              <!-- douban ad begin -->
              <div id="dale_book_home_inner_middle"></div>
              <div id="dale_book_home_download_middle"></div>
              <!-- douban ad end --></div>
            <!-- douban app end -->
            <!-- douban ad begin -->
            <div id="dale_book_home_bottem_right" class="ad-placeholder"></div>
            <!-- douban ad end --></div>
          <div class="extra">
            <!-- douban ad begin -->
            <div id="dale_book_home_bottom_super_banner" class="ad-placeholder"></div>
            <!-- douban app end --></div>
        </div>
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


    <!-- brand34-docker-->
    <div id="search_suggest" style="display: none; top: 78px; left: 593.906px;">
      <ul></ul>
    </div>


    <div class="book-bubble" style="width: 300px; display: block;">
      <b class="bubble-close">×</b>
      <div class="bubble-content">
        <h4 class="title">五四的另一面</h4>
        <p>
          <span class="author">杨念群</span>/
          <span class="year">2019-4</span>/
          <span class="publisher">上海人民出版社</span></p>
        <p class="abstract">☆ 著名历史学家杨念群教授，《何处是“江南”？》之后，另辟新径之作—— 跨政治史、社会史、思想史、文化史等多元领域，融入对五四重要议题的全新思考，展现最为新锐的史学前沿研究。 ☆五四一百周年纪念热潮中的理智冷静之作—— 有意淡化纪念五四的仪式感，反对老调重弹、拘泥旧话题的“纪念史学”套路。 ☆重新定位五四，发现斑 驳多彩、异常复杂的历史真相—— 把五...</p></div>
    </div>
  </body>

</html>