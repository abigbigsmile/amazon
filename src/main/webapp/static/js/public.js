function isLogin(element) {
    $.ajax({
        type:"post",
        url:"http://localhost:8080/amazon/shoppingcart/addShoppingcart",
        success:function (ret) {
            if(ret == "0"){
                alert("请先登录！！！！");
                window.location.reload();
            }
        },
        error:function (error) {
            console.log(error);
        }
    });
}