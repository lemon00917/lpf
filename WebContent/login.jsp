<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录</title>
        <link rel="stylesheet" type="text/css" href="assets/css/login.css">
        <script type="text/javascript" src="assets/js/jquery.min.js"></script>
        <script type="text/javascript">
        $(function(){
            $(".name input").focus(function(){
                $(this).prev("i").css({"background-image":"url(img/user2.png)"});
            });
            $(".name input").blur(function(){
                $(this).prev("i").css({"background-image":"url(img/user1.png)"});
            });
            $(".password input").focus(function(){
                $(this).prev("i").css({"background-image":"url(img/password2.png)"});
            });
            $(".password input").blur(function(){
                $(this).prev("i").css({"background-image":"url(img/password1.png)"});
            });
        });
    </script>
    </head>
    <body>
    	<div class="container">
        <div class="wrap">
            <header><span>便携式经络检测仪</span></header>
            <article>
                <section>
                    <aside>
                        <em>
                            <img src="img/user.png">
                        </em>
                         <form action="${pageContext.request.contextPath }/login" method="post">
                            <p class="name"><i></i><input type="text" name="username"  class="userName" value="${username}" placeholder="请输入用户名"></p>
                            <p class="password"><i></i><input type="password" name="password" class="pwd" value="${password}" placeholder="请输入密码"></p>
                            <font color="red">${loginError}</font>
                            <button id="btn">登录</button>
                            <p class="remember"><input type="checkbox" name="remember">记住密码</p>
                            <p class="regist"><span>没有账号?</span><a href="register.jsp">立即注册</a></p>
                            <div class="clear"></div>
                        </form>
                    </aside>
                   
                </section>               
            </article>
            <footer>
                <ul>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">人才招聘</a></li>
                    <li><a href="#">友情链接</a></li>
                    <li><a href="#">公司地址</a></li>
                    <li><a href="#">关注我们</a></li>
                </ul>
                <p>本网站版权归李鹏飞团队所有，未经许可，不得转载。</p>
            </footer>
        </div>
    </div>
 	</body>
 	 <script type="text/javascript">
 	$("input").focus(function(){
 	$("font").hide();	
 	});
</script> 
</html>