<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page isELIgnored="false"%>
<jsp:useBean id="timer" class="java.util.Date"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物车-当当网</title>
    <base href="http://localhost:8080/amazon/"/>
    <link rel="shortcut icon" href="http://shopping.dangdang.com/shoppingcart/images/favicon.ico?v=20181226" type="image/x-icon">
    <link href="css/shopping_cart_new.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/size_color.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="http://www.jq22.com/jquery/bootstrap-3.3.4.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/distpicker.data.js"></script>
    <script type="text/javascript" src="js/distpicker.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

  </head>
  
  <body style="padding-bottom:82px" class="vsc-initialized">

    <link href="css/header_960_150611.css" rel="stylesheet" type="text/css">

    <div id="hd">
      <div id="tools">
        <div class="tools">
          <div class="ddnewhead_operate" dd_name="顶链接">
            <ul class="ddnewhead_operate_nav">
              <li class="ddnewhead_cart">
                <a href="javascript:AddToShoppingCart(0);" name="购物车" dd_name="购物车">
                  <i class="icon_card"></i>购物车
                  <b id="cart_items_count">0</b></a>
              </li>
              <li>
                <a target="_blank" href="http://myhome.dangdang.com/myOrder" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单
                  <b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a>
              </li>
              <li>
                <a target="_blank" href="http://e.dangdang.com/touch/special/goldenIP/essays.html" name="mydd_7" dd_name="小说投稿">小说投稿</a></li>
              <li class="dang_erweima">
                <a target="_blank" href="http://t.dangdang.com/20130220_ydmr" id="a_phonechannel" onmouseover="showgaoji(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);" onmouseout="hideotherchannel(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);" class="menu_btn">
                  <i class="icon_tel"></i>手机当当</a>
                <div class="tel_pop" style="display: none;" id="__ddnav_sjdd" onmouseover="showgaoji(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);" onmouseout="hideotherchannel(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);">
                  <a target="_blank" href="http://t.dangdang.com/20130220_ydmr" class="title">
                    <i class="icon_tel"></i>手机当当</a>
                  <i class="title_shadow"></i>
                  <div class="tel_pop_box clearfix">
                    <div class="tel_pop_box_li">
                      <a href="http://t.dangdang.com/20130220_ydmr" dd_name="手机二维码" target="_blank">
                        <span>当当购物客户端</span>
                        <img src="./购物车-当当网_files/shopingapp.png">
                        <span class="text">下载购物APP
                          <br>手机端1元秒</span></a>
                    </div>
                    <div class="tel_pop_box_li">
                      <a href="http://t.dangdang.com/20140107_5pz1" dd_name="手机二维码" target="_blank">
                        <span>当当读书客户端</span>
                        <img src="./购物车-当当网_files/readapp.png">
                        <span class="text">万本电子书
                          <br>免费读</span></a>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my_dd">
                <a class="menu_btn" target="_blank" href="http://myhome.dangdang.com/" name="我的当当" dd_name="我的当当" id="a_myddchannel" onmouseover="showgaoji(&#39;a_myddchannel&#39;,&#39;__ddnav_mydd&#39;)" onmouseout="hideotherchannel(&#39;a_myddchannel&#39;,&#39;__ddnav_mydd&#39;);">我的当当</a>
                <ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji(&#39;a_myddchannel&#39;,&#39;__ddnav_mydd&#39;)" onmouseout="hideotherchannel(&#39;a_myddchannel&#39;,&#39;__ddnav_mydd&#39;);">
                  <li>
                    <a target="_blank" href="http://myhome.dangdang.com/myOrder" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
                  <li>
                    <a target="_blank" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx" name="mydd_8" dd_name="新_购物车" rel="nofollow">购物车</a></li>
                  <li>
                    <a target="_blank" href="http://my.dangdang.com/memberpoints/index.aspx?ref=my-0-L" name="mydd_4" dd_name="我的银铃铛" rel="nofollow">银铃铛抵现</a></li>
                  <li>
                    <a target="_blank" href="http://myhome.dangdang.com/myFavorite" name="mydd_1" dd_name="我的收藏" rel="nofollow">我的收藏</a></li>
                  <li>
                    <a target="_blank" href="http://newaccount.dangdang.com/payhistory/mybalance.aspx" name="mydd_5" dd_name="我的余额" rel="nofollow">我的余额</a></li>
                  <li>
                    <a target="_blank" href="http://comment.dangdang.com/comment" name="mydd_4" dd_name="我的评论" rel="nofollow">我的评论</a></li>
                  <li>
                    <a target="_blank" href="http://newaccount.dangdang.com/payhistory/mycoupon.aspx" name="mydd_2" dd_name="礼券/礼品卡" rel="nofollow">礼券/礼品卡</a></li>
                  <li>
                    <a target="_blank" href="http://e.dangdang.com/ebook/listUserEbooks.do" name="mydd_6" dd_name="电子书架">电子书架</a></li>
                </ul>
              </li>
              <li>
                <a class="menu_btn" href="javascript:void(0);" style="cursor:default;" name="qycg" dd_name="企业采购" id="a_qycgchannel" onmouseover="showgaoji(&#39;a_qycgchannel&#39;,&#39;__ddnav_qycg&#39;);" onmouseout="hideotherchannel(&#39;a_qycgchannel&#39;,&#39;__ddnav_qycg&#39;);">企业采购</a>
                <ul class="ddnewhead_gcard_list" id="__ddnav_qycg" onmouseover="showgaoji(&#39;a_qycgchannel&#39;,&#39;__ddnav_qycg&#39;);" onmouseout="hideotherchannel(&#39;a_qycgchannel&#39;,&#39;__ddnav_qycg&#39;);">
                  <li>
                    <a target="_blank" href="http://giftcard.dangdang.com/giftcardCompany" name="qycg_1" dd_name="大宗采购">大宗采购</a></li>
                  <li>
                    <a target="_blank" href="http://giftcard.dangdang.com/" name="qycg_2" dd_name="礼品卡采购">礼品卡采购</a></li>
                  <li>
                    <a target="_blank" href="http://account.dangdang.com/payhistory/mymoney.aspx" name="gqycg_3" dd_name="礼品卡激活" rel="nofollow">礼品卡激活</a></li>
                  <li>
                    <a target="_blank" href="http://help.dangdang.com/details/page24" name="qycg_4" dd_name="礼品卡使用">礼品卡使用</a></li>
                </ul>
              </li>
              <li class="hover ">
                <a class="menu_btn" href="javascript:void(0);" style="cursor:default;" name="ddkf_0" dd_name="客户服务" id="a_bzzxchannel" onmouseover="showgaoji(&#39;a_bzzxchannel&#39;,&#39;__ddnav_bzzx&#39;);" onmouseout="hideotherchannel(&#39;a_bzzxchannel&#39;,&#39;__ddnav_bzzx&#39;);">客户服务</a>
                <ul class="ddnewhead_gcard_list" id="__ddnav_bzzx" onmouseover="showgaoji(&#39;a_bzzxchannel&#39;,&#39;__ddnav_bzzx&#39;);" onmouseout="hideotherchannel(&#39;a_bzzxchannel&#39;,&#39;__ddnav_bzzx&#39;);">
                  <li>
                    <a target="_blank" href="http://help.dangdang.com/index" name="ddkf_2" dd_name="帮助中心">帮助中心</a></li>
                  <li>
                    <a target="_blank" href="http://return.dangdang.com/reverseapplyselect.aspx" name="ddkf_3" dd_name="自助退换货">自助退换货</a></li>
                  <li>
                    <a target="_blank" href="http://order.dangdang.com/InvoiceApply/InvoiceOnlineReissue.aspx" name="tsjy_2" dd_name="自助发票" rel="nofollow">自助发票</a></li>
                  <li>
                    <a target="_blank" href="http://help.dangdang.com/details/page206" name="ddkf_4" dd_name="联系客服">联系客服</a></li>
                  <li>
                    <a target="_blank" href="http://help.dangdang.com/email_contact" name="tsjy_1" dd_name="我要投诉" rel="nofollow">我要投诉</a></li>
                  <li>
                    <a target="_blank" href="http://help.dangdang.com/email_contact" name="tsjy_2" dd_name="意见建议" rel="nofollow">意见建议</a></li>
                </ul>
              </li>
            </ul>
            <div class="ddnewhead_welcome" display="none;">
              <span id="nickname">
                <span class="hi">Hi，
                  <a href="http://myhome.dangdang.com/" class="login_link" target="_blank">
                    <b>《氧气》</b>
                  </a>
                  <a href="javascript:PageTopSignOut();" target="_self">[退出]</a></span>
              </span>
              <div class="tel_pop" style="display:none" id="__ddnav_sjdd" onmouseover="showgaoji(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);" onmouseout="hideotherchannel(&#39;a_phonechannel&#39;,&#39;__ddnav_sjdd&#39;);">
                <a target="_blank" href="http://t.dangdang.com/20130220_ydmr" class="title">
                  <i class="icon_tel"></i>手机当当</a>
                <i class="title_shadow"></i>
                <ul class="tel_pop_box">
                  <li>
                    <a href="http://t.dangdang.com/20130220_ydmr" dd_name="手机二维码">
                      <span>当当手机客户端</span>
                      <img src="./购物车-当当网_files/erweima2.png">
                      <span class="text">随手查订单
                        <br>随时享优惠</span></a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="new_head_znx" id="znx_content" style="display:none;"></div>
          </div>
        </div>
      </div>
      <div id="header_end"></div>
      <!--CreateDate 2017-07-03 00:30:01--></div>
    <form action="http://search.dangdang.com/search.aspx" id="bootpagetopSearch" name="bootpagetopSearch" method="GET"></form>
    <div class="shoppingcart_wrapper" id="ad_cpt_11850" style="display: none;"></div>


    <div class="add_line">
      <div class="w960">
        <div class="address" id="dp_adress">
          <span class="icon_adr">&nbsp;</span>配送地址：
          <div class="select_add">
            <span class="text fn-select-address">广东东莞市大岭山镇</span>
          </div>
        </div>


        <div class="jq22-container">
          <div class="docs-methods">
            <form class="form-inline">
              <div id="distpicker">
                <div class="form-group">
                  <label class="sr-only" for="province">Province</label>
                  <select class="form-control" id="province"></select>
                </div>
                <div class="form-group">
                  <label class="sr-only" for="city">City</label>
                  <select class="form-control" id="city"></select>
                </div>
                <div class="form-group">
                  <label class="sr-only" for="district">District</label>
                  <select class="form-control" id="district"></select>
                </div>
                <div class="form-group">
                  <label class="sr-only" for="district">Detail</label>
                  <input type="text" placeholder="请输入详细街道信息"/>
                </div>
                <div class="form-group">
                  <button class="btn btn-warning" id="reset-deep" type="button">重置</button>
                  <button class="btn btn-danger" id="destroy" type="button">保存</button>
                </div>
              </div>
            </form>
          </div>
      </div>

      </div>
    </div>
    <div class="w960" id="showTip">
      <!-- 结算时 商品SPU限购提示窗口 start-->
      <div id="spuPromoLimitDiv" class="pop" style="left:50%; top:50%; margin:-200px 0 0 -253px; position: fixed; z-index: 1004; display: none;">
        <a class="close"></a>
        <div class="pop_title">商品限购</div>
        <div class="popup_limit"></div>
        <div class="btn_bar limit_bar">
          <a class="btn_red">确定</a>
          <a class="pop_btn">取消</a></div>
      </div>
      <!-- 结算时 商品SPU限购提示窗口 end-->
      <!--银铃铛惠购弹窗-->
      <div id="pointFavorErrorPageForCheckOut">
        <div class="fullScreen"></div>
        <div class="points_alert">
          <div class="head_title">
            <div class="title_name">银铃铛不足,请调整兑换商品或兑换数量</div>
            <div class="close"></div>
          </div>
          <div class="remind_info">所需银铃铛
            <span class="sort" id="allNeedPointNum">500</span>分，我的银铃铛
            <span class="sort" id="userHasPointNum">100</span>分</div>
          <div class="list_scroll">
            <div class="list_p" id="usePointFavorProductInfoList"></div>
          </div>
          <div class="btn_confirm">
            <span class="btn confirm">确定</span>
            <span class="btn cancel">取消</span></div>
        </div>
      </div>
      <div id="giftDiv" class="pop_tip gift_select" style="left:50%; top:50%; margin:-200px 0 0 -302px; position: fixed; z-index: 1001; display: none;">
        <div class="head_title">
          <div class="title_name">您购物车中以下商品可选为赠品</div>
          <div class="close"></div>
        </div>
        <div class="products_sort" id="giftArea"></div>
        <a href="javascript:void(0)" class="btn_b fn-back-cart">返回购物车选赠品</a>
        <a id="gift_checkout" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx?product_ids=0&amp;referer=http://www.dangdang.com/&amp;prev_referer=https://www.baidu.com/link?url=sGtFmkIaPiW7RjQEACtwV2TNIGznz-NfoWymNjazAKUr31mgbw6glRqSWuZ37tPT&amp;wd=&amp;eqid=c8693def0001104c000000065cce89b9#" class="btn_b">继续结算，土豪任性不要了</a></div>
      <div class="login_tip" style="display: none;">
        <span class="icon"></span>
      </div>
      <div id="remove_pop" class="login_tip" style="display: none;">
        <span class="icon"></span>
      </div>
      <div id="clear_pop" class="login_tip" style="display: none;">
        <span class="icon"></span>
      </div>
      <!-- 缺货 pop-->
      <div id="stockShortDiv" class="pop_stock" style="left:50%; top:50%; margin:-200px 0 0 -253px; position: fixed; z-index: 1004; display: none;">
        <a class="close"></a>
        <div class="pop_title">以下商品缺货，为您修改到最大可购买数量</div>
        <div class="popup_out">
          <ul class="out_list"></ul>
        </div>
        <div class="btn_bar limit_bar">
          <a href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx?product_ids=0&amp;referer=http://www.dangdang.com/&amp;prev_referer=https://www.baidu.com/link?url=sGtFmkIaPiW7RjQEACtwV2TNIGznz-NfoWymNjazAKUr31mgbw6glRqSWuZ37tPT&amp;wd=&amp;eqid=c8693def0001104c000000065cce89b9#" class="btn_red">确定</a></div>
      </div>
    </div>
    <div class="w960" id="cart">
      <ul class="shopping_title" id="j_carttitle">
        <li class="f1">
          <a id="j_selectall" href="javascript:void(0)" class="checknow fn-checkall" dd_name="全选">选中</a>全选</li>
        <li class="f2">商品信息</li>
        <li class="f3">单价（元）</li>
        <li class="f4">数量</li>
        <li class="f4">金额（元）</li>
        <li class="f5">操作</li></ul>
      <div class="fn-shops" id="J_cartContent">


        <div class="fn-shop" data-shopids="eBook_0">
          <table border="0" cellspacing="0" cellpadding="0" class="shop_title">
            <tbody>
              <tr>
                <td>
                  <a href="javascript:void(0)" dd_name="选中店铺" class="checknow fn-shop-checkall undefined">选中</a></td>
                <td>
                  <span class="shop_icon store_e"></span>
                </td>
                <td>
                  <a href="http://e.dangdang.com/" target="_blank">当当电子书</a></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>
          <div class="shopping_list" data-shopids="eBook_0">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody data-stock="9999" data-offline="false" data-productid="1901116554" data-timestamp="1557021373000" data-orderforspupormo="0">
                <tr id="tr_733038879" class="  ">
                  <td class="row1">
                    <a href="javascript:void(0)" data-item="733038879" class="fn-product-check checknow">选中</a></td>
                  <td class="row_img">
                    <a href="http://product.dangdang.com/1901116554.html" target="_blank" dd_name="查看详情">
                      <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./购物车-当当网_files/1901116554-1_m_2.jpg" width="80" height="80"></a>
                    <div style="display: none;" class="img_big">
                      <a href="http://product.dangdang.com/1901116554.html" dd_name="查看详情" target="_blank">
                        <img src="./购物车-当当网_files/1901116554-1_b_2.jpg"></a>
                      <span class="arrow"></span>
                    </div>
                  </td>
                  <td class="row_name">
                    <div class="name">
                      <a href="http://product.dangdang.com/1901116554.html" title="债务危机" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">债务危机</a></div>
                  </td>
                  <td class="row3">
                    <span>¥49.99</span></td>
                  <td data-minbuy="0" class="fn-count-tip row3 ">
                    <span class="amount amount_e">1</span></td>
                  <td class="row4">
                    <span class="red">¥0.00</span></td>
                  <td class="row5 ">
                    <span>
                      <a href="javascript:void(0)" data-cartitemid="733038879" data-productid="1901116554" data-mainproductid="0" data-productname="债务危机" data-saleprice="49.99" data-categorypath="98.01.22.01.14.00" data-item-detail="{&quot;cartItemId&quot;:733038879,&quot;productId&quot;:1901116554}" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span>
                    <span>
                      <a href="javascript:void(0)" data-item="733038879" class="fn-remove-product" dd_name="删除普通品">删除</a></span>
                  </td>
                </tr>
              </tbody>
              <tbody data-stock="9999" data-offline="false" data-productid="1901084091" data-timestamp="1557021280000" data-orderforspupormo="0">
                <tr id="tr_733038611" class="  ">
                  <td class="row1">
                    <a href="javascript:void(0)" data-item="733038611" class="fn-product-check checknow">选中</a></td>
                  <td class="row_img">
                    <a href="http://product.dangdang.com/1901084091.html" target="_blank" dd_name="查看详情">
                      <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./购物车-当当网_files/1901084091-1_m_2.jpg" width="80" height="80"></a>
                    <div style="display: none;" class="img_big">
                      <a href="http://product.dangdang.com/1901084091.html" dd_name="查看详情" target="_blank">
                        <img src="./购物车-当当网_files/1901084091-1_b_2.jpg"></a>
                      <span class="arrow"></span>
                    </div>
                  </td>
                  <td class="row_name">
                    <div class="name">
                      <a href="http://product.dangdang.com/1901084091.html" title="十二个明天" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">十二个明天</a></div>
                  </td>
                  <td class="row3">
                    <span>¥29.99</span></td>
                  <td data-minbuy="0" class="fn-count-tip row3 ">
                    <span class="amount amount_e">1</span></td>
                  <td class="row4">
                    <span class="red">¥0.00</span></td>
                  <td class="row5 ">
                    <span>
                      <a href="javascript:void(0)" data-cartitemid="733038611" data-productid="1901084091" data-mainproductid="0" data-productname="十二个明天" data-saleprice="29.99" data-categorypath="98.01.03.41.00.00" data-item-detail="{&quot;cartItemId&quot;:733038611,&quot;productId&quot;:1901084091}" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span>
                    <span>
                      <a href="javascript:void(0)" data-item="733038611" class="fn-remove-product" dd_name="删除普通品">删除</a></span>
                  </td>
                </tr>
              </tbody>
              <tbody data-stock="9999" data-offline="false" data-productid="1901104637" data-timestamp="1557021265000" data-orderforspupormo="0">
                <tr id="tr_733038572" class="bb_none">
                  <td class="row1">
                    <a href="javascript:void(0)" data-item="733038572" class="fn-product-check checknow">选中</a></td>
                  <td class="row_img">
                    <a href="http://product.dangdang.com/1901104637.html" target="_blank" dd_name="查看详情">
                      <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./购物车-当当网_files/1901104637-1_m_4.jpg" width="80" height="80"></a>
                    <div style="display: none;" class="img_big">
                      <a href="http://product.dangdang.com/1901104637.html" dd_name="查看详情" target="_blank">
                        <img src="./购物车-当当网_files/1901104637-1_b_4.jpg"></a>
                      <span class="arrow"></span>
                    </div>
                  </td>
                  <td class="row_name">
                    <div class="name">
                      <a href="http://product.dangdang.com/1901104637.html" title="三体全集(全3册)" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">三体全集(全3册)</a></div>
                  </td>
                  <td class="row3">
                    <span>¥19.99</span></td>
                  <td data-minbuy="0" class="fn-count-tip row3 ">
                    <span class="amount amount_e">1</span></td>
                  <td class="row4">
                    <span class="red">¥0.00</span></td>
                  <td class="row5 ">
                    <span>
                      <a href="javascript:void(0)" data-cartitemid="733038572" data-productid="1901104637" data-mainproductid="0" data-productname="三体全集(全3册)" data-saleprice="19.99" data-categorypath="98.01.03.41.00.00" data-item-detail="{&quot;cartItemId&quot;:733038572,&quot;productId&quot;:1901104637}" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span>
                    <span>
                      <a href="javascript:void(0)" data-item="733038572" class="fn-remove-product" dd_name="删除普通品">删除</a></span>
                  </td>
                </tr>
              </tbody>
              <tfoot>
                <tr class="total">
                  <td class="row1">&nbsp;</td>
                  <td class="row_img">店铺合计</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="3" class="row4">
                    <span class="red big ooline alignright">¥0.00</span></td>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>


      </div>
      <div class="shoppingcart_loading" id="J_cartLoading" style="display: none;">
        <img height="30" width="30" src="./购物车-当当网_files/loading.gif"></div>
    </div>
   

    <div id="hide_div" style="height:0px;visibility:hidden;"></div>
    <div style="position: fixed; bottom: -20px; z-index: 101; width: 100%; left: 0px;">
      <div class="shopping_total" id="J_totalMoneyBlock">
        <div class="shopping_total_right">
          <a class="total_btn fn-checkout unable" href="javascript:;" id="checkout_btn" dd_name="结算">结&nbsp;&nbsp;算</a>
          <div class="subtotal">
            <p>
              <span class="cartsum">总计(不含运费)：</span>
              <span id="payAmount" class="price">¥0.00</span></p>
            <p>
              <span class="cartsum">已节省：</span>
              <span id="totalFavor">¥0.00</span></p>
          </div>
          <div class="pop_del pop_ebook fn-ck" id="ck_tip" style="display:none">
            <h1>电子书重复购买提示</h1>
            <p>
            </p>
            <a id="ck_link" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx?product_ids=0&amp;referer=http://www.dangdang.com/&amp;prev_referer=https://www.baidu.com/link?url=sGtFmkIaPiW7RjQEACtwV2TNIGznz-NfoWymNjazAKUr31mgbw6glRqSWuZ37tPT&amp;wd=&amp;eqid=c8693def0001104c000000065cce89b9#" class="pop_btn">朕知道了</a></div>
        </div>
        <div class="shopping_total_left" id="J_leftBar">
          <a id="j_selectall2" href="javascript:void(0)" class="checknow fn-checkall" dd_name="全选">选中</a>全选
          <a id="j_removeproducts" href="javascript:void(0)" class="fn-batch-remove" dd_name="批量删除按钮">批量删除</a>
          <span>已选择
            <font color="red">0</font>件商品</span>
          <div id="J_batchRemoveProductBox" style="display: none;z-index:-1;left:0px;" class="pop_del">
            <p>您确定要批量删除商品吗？</p>
            <a href="javascript:;" class="pop_btn fn-confirm-batchremovebox">确定</a>
            <a href="javascript:;" class="pop_btn fn-close-batchremovebox">取消</a></div>
          <div id="J_batchAddWishBox" style="display: none;z-index:-1;left:85px;" class="pop_del col ">
            <p>您确定要批量移入收藏吗？</p>
            <a href="javascript:;" class="pop_btn fn-confirm-batchaddwish">确定</a>
            <a href="javascript:;" class="pop_btn fn-close-batchwishbox">取消</a></div>
        </div>
      </div>
    </div>




    <div id="J_errorBox" style="display: none;z-index:102" class="pop_del col">
      <p>
      </p>
      <a class="pop_btn fn-close-removebox" href="javascript:;">确定</a></div>
    <div id="J_addToWishTipHtml" style="display: none; position: absolute;"></div>
    <div id="J_addWishBox" style="display: none" class="pop_del col ">
      <p>移入收藏后，将不在购物车显示，是否继续操作？</p>
      <a href="javascript:;" class="pop_btn fn-confirm-addwish">确定</a>
      <a href="javascript:;" class="pop_btn fn-close-wishbox">取消</a></div>
    <div id="J_removeProductBox" style="display: none;" class="pop_del">
      <p>您确定要删除商品吗？</p>
      <a href="javascript:;" class="pop_btn fn-confirm-removebox">确定</a>
      <a href="javascript:;" class="pop_btn fn-close-removebox">取消</a></div>
    <div id="J_removeGiftBox" style="display: none;" class="pop_del">
      <p>您确定要删除赠品吗？</p>
      <a href="javascript:;" class="pop_btn fn-confirm-removegiftbox">确定</a>
      <a href="javascript:;" class="pop_btn fn-close-removebox">取消</a></div>
    <div class="w960">

      <div class="shopping_ads" id="J_weinituijian" style="">
        <div class="ads_tab">为您推荐</div>
        <div class="ads_box">

          <div class="show_list">
            <div class="big_box">
              <ul class="show_box line2" request_id="201905051459398833_000711251578851453">
                <li request_id="201905051459398833_000711251578851453" position="request_id=201905051459398833_000711251578851453&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=27856738&amp;position=1&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/27856738.html#ddclick_reco_cart_foru" class="gpic" title="你曾经爱我">
                    <img src="./购物车-当当网_files/27856738-1_b_3.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/27856738.html#ddclick_reco_cart_foru" target="_blank">你曾经爱我</a></p>
                  <p>
                    <span class="price">¥33.00</span></p>
                  <a href="javascript:;" data-item="27856738" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/27856738.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>0</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398833_000711251578851453" position="request_id=201905051459398833_000711251578851453&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=25234477&amp;position=2&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/25234477.html#ddclick_reco_cart_foru" class="gpic" title="莫言典藏版作品（随机）（因活动火爆商品延迟发货，请不要任性取消订单，会按照订单下单顺序发货）">
                    <img src="./购物车-当当网_files/25234477-1_b_1.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/25234477.html#ddclick_reco_cart_foru" target="_blank">莫言典藏版作品（随机）（因活动火爆商品延迟发货，请不要任性取消订单，会按照订单下单顺序发货）</a></p>
                  <p>
                    <span class="price">¥32.40</span></p>
                  <a href="javascript:;" data-item="25234477" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/25234477.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>8983</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398833_000711251578851453" position="request_id=201905051459398833_000711251578851453&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26921715&amp;position=3&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26921715.html#ddclick_reco_cart_foru" class="gpic" title="人生海海（莫言盛赞！董卿、高晓松、白百何、杨祐宁、何穗反复阅读，诚心推荐！麦家2019新作)">
                    <img src="./购物车-当当网_files/26921715-1_b_2.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26921715.html#ddclick_reco_cart_foru" target="_blank">人生海海（莫言盛赞！董卿、高晓松、白百何、杨祐宁、何穗反复阅读，诚心推荐！麦家2019新作)</a></p>
                  <p>
                    <span class="price">¥37.90</span></p>
                  <a href="javascript:;" data-item="26921715" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26921715.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>2851</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398833_000711251578851453" position="request_id=201905051459398833_000711251578851453&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=23579654&amp;position=4&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/23579654.html#ddclick_reco_cart_foru" class="gpic" title="三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！">
                    <img src="./购物车-当当网_files/23579654-1_b_3.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/23579654.html#ddclick_reco_cart_foru" target="_blank">三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！</a></p>
                  <p>
                    <span class="price">¥55.80</span></p>
                  <a href="javascript:;" data-item="23579654" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/23579654.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>688478</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398833_000711251578851453" position="request_id=201905051459398833_000711251578851453&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=22569763&amp;position=5&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/22569763.html#ddclick_reco_cart_foru" class="gpic" title="鼠王">
                    <img src="./购物车-当当网_files/22569763-1_b_1.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/22569763.html#ddclick_reco_cart_foru" target="_blank">鼠王</a></p>
                  <p>
                    <span class="price">¥35.00</span></p>
                  <a href="javascript:;" data-item="22569763" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/22569763.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>4717</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398235_000707120128408787" position="request_id=201905051459398235_000707120128408787&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26912902&amp;position=6&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26912902.html#ddclick_reco_cart_foru" class="gpic" title="宫西达也超级绘本（全11册）">
                    <img src="./购物车-当当网_files/26912902-1_b_3.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26912902.html#ddclick_reco_cart_foru" target="_blank">宫西达也超级绘本（全11册）</a></p>
                  <p>
                    <span class="price">¥93.00</span></p>
                  <a href="javascript:;" data-item="26912902" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26912902.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>63001</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398235_000707120128408787" position="request_id=201905051459398235_000707120128408787&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26910987&amp;position=7&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26910987.html#ddclick_reco_cart_foru" class="gpic" title="你不懂茶（茶文化入门必读经典，日本插画师精心手绘300余幅插图，时尚、有料、有趣的茶知识百科）">
                    <img src="./购物车-当当网_files/26910987-1_b_29.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26910987.html#ddclick_reco_cart_foru" target="_blank">你不懂茶（茶文化入门必读经典，日本插画师精心手绘300余幅插图，时尚、有料、有趣的茶知识百科）</a></p>
                  <p>
                    <span class="price">¥39.50</span></p>
                  <a href="javascript:;" data-item="26910987" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26910987.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>4186</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398235_000707120128408787" position="request_id=201905051459398235_000707120128408787&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26921711&amp;position=8&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26921711.html#ddclick_reco_cart_foru" class="gpic" title="和孩子聊艺术">
                    <img src="./购物车-当当网_files/26921711-1_b_3.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26921711.html#ddclick_reco_cart_foru" target="_blank">和孩子聊艺术</a></p>
                  <p>
                    <span class="price">¥34.50</span></p>
                  <a href="javascript:;" data-item="26921711" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26921711.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>55</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398235_000707120128408787" position="request_id=201905051459398235_000707120128408787&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26909420&amp;position=9&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26909420.html#ddclick_reco_cart_foru" class="gpic" title="怦然心动3">
                    <img src="./购物车-当当网_files/26909420-1_b_4.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26909420.html#ddclick_reco_cart_foru" target="_blank">怦然心动3</a></p>
                  <p>
                    <span class="price">¥30.80</span></p>
                  <a href="javascript:;" data-item="26909420" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26909420.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>41</span>位用户评价</a></p>
                </li>
                <li request_id="201905051459398235_000707120128408787" position="request_id=201905051459398235_000707120128408787&amp;perm_id=20190504191920493939304866439672722&amp;module=cart_foru&amp;main_pid=0&amp;reco_pid=26908656&amp;position=10&amp;state=dev&amp;client=PC" traced="1">
                  <a href="http://product.dangdang.com/26908656.html#ddclick_reco_cart_foru" class="gpic" title="人设（别让设定的人物，毁了真实的人生。李尚龙2019全新作品！）">
                    <img src="./购物车-当当网_files/26908656-1_b_11.jpg" width="150" height="150"></a>
                  <p>
                    <a href="http://product.dangdang.com/26908656.html#ddclick_reco_cart_foru" target="_blank">人设（别让设定的人物，毁了真实的人生。李尚龙2019全新作品！）</a></p>
                  <p>
                    <span class="price">¥42.70</span></p>
                  <a href="javascript:;" data-item="26908656" class="btn_add fn-btn-add">加入购物车</a>
                  <p class="pl">
                    <a target="_blank" href="http://product.dangdang.com/26908656.html?point=comment_point&amp;ddclick_reco_cart_foru">已有
                      <span>1193</span>位用户评价</a></p>
                </li>
              </ul>
            </div>
          </div>

        </div>
      </div>

    </div>


    <div class="pop_del pop_ebook" style="left:460px; right:auto; top:-130px;display: none;" id="J_vnewzTipBox">
      <a href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx?product_ids=0&amp;referer=http://www.dangdang.com/&amp;prev_referer=https://www.baidu.com/link?url=sGtFmkIaPiW7RjQEACtwV2TNIGznz-NfoWymNjazAKUr31mgbw6glRqSWuZ37tPT&amp;wd=&amp;eqid=c8693def0001104c000000065cce89b9#" class="close"></a>
      <h1>限时说明</h1>
      <p>由于尾品会和新品汇的商品库存有限，我们只能为您保留
        <span class="red">20分钟</span>，否则尾品会及新品汇的商品将被删除，请尽快结算。</p></div>
    <div id="mask"></div>
    <div id="sema">
      <div id="size_color_box" class="size_color_box" dd_name="购物车换分色分码弹窗">
        <div class="pic_info clearfix">
          <a href="javascript:;" class="sc_close fn-close-ss"></a>
          <div class="show_pic">
            <a class="big" title="商品名称" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx?product_ids=0&amp;referer=http://www.dangdang.com/&amp;prev_referer=https://www.baidu.com/link?url=sGtFmkIaPiW7RjQEACtwV2TNIGznz-NfoWymNjazAKUr31mgbw6glRqSWuZ37tPT&amp;wd=&amp;eqid=c8693def0001104c000000065cce89b9##">
              <span class="pic">
                <img class="fn-img" width="350" height="350" alt="商品名称"></span>
            </a>
          </div>
          <div class="show_info">
            <div class="head" name="Title_pub">
              <h1 class="fn-data" data-set="title"></h1>
            </div>
            <div class="buy_area">
              <div class="clearfix" id="colorDivId">
                <div class="show_info_left fn-data" data-set="colorname"></div>
                <div class="show_info_right o_h">
                  <ul class="color fn-colors" id="select_color_id"></ul>
                </div>
              </div>
              <div class="clearfix m_t6" id="sizedivid">
                <div class="show_info_left fn-data" data-set="sizename"></div>
                <div class="show_info_right o_h">购买此商品,可享促销
                  <ul class="size fn-sizes" id="select_size_id"></ul></div>
              </div>
              <div class="clearfix m_t8">
                <div class="show_info_left">&nbsp;</div>
                <div class="show_info_right c_red fn-errormsg"></div>
              </div>
              <div class="clearfix m_t8">
                <div class="show_info_left">&nbsp;</div>
                <div class="show_info_right clearfix">
                  <a id="changeSkuDivId" href="javascript:;" class="yes_id_do fn-semasubmit" dd_name="购物车换分色分码确认">确 认</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="fixedbar">
      <div class="window_suspend">
        <a target="_blank" href="http://survey.dangdang.com/html/2516.html">问卷调查</a></div>
    </div>

    <link href="css/footer_140522.css" rel="stylesheet" type="text/css">
    <div id="footer">
      <div class="footer">
        <div class="footer_nav_box">
          <div class="footer_copyright">
            <span>Copyright (C) 当当网 2004-2014, All Rights Reserved</span>
            <a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098" target="_blank" class="footer_img" rel="nofollow">
              <img src="./购物车-当当网_files/validate.gif"></a>
            <span>
              <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP证041189号</a></span>
            <span>出版物经营许可证&nbsp;新出发京批字第直0673号</span></div>
        </div>
      </div>
    </div>

</body>

</html>