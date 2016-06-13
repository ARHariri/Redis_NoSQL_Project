
<html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    	<meta charset="utf-8">
        <title>دیجی فروش </title>
        <link rel="stylesheet" href="css/markup.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/elastislide.css">
        <link rel="stylesheet" href="css/jquery.jqzoom.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/jquery.jqzoom-core-pack.js"></script>
        <script src="js/jquery.flexslider-min.js"></script>
        <script src="js/modernizr.custom.17475.js"></script>
        <script src="js/jquery.elastislide.js"></script>
        <script src="js/tabs.js"></script>
		<script src="js/cycle.js" type="text/javascript"></script>
        <script src="js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>

    <body>
    <div id="fb-root"></div>
		<script type="text/javascript">
			window.fbAsyncInit = function() {
				FB.init({
					status: true,
					cookie: true,
					xfbml: true,
					oauth : true
				});
			};
			(function(d){
				var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
				js = d.createElement('script'); js.id = id; js.async = true;
				js.src = "../../connect.facebook.net/en_US/all.js";
				d.getElementsByTagName('head')[0].appendChild(js);
			}(document));
        </script>

    <jsp:directive.include file="header.jsp" />

    <div class="content pivot grid">
	<div class="block grid12">
        <div class="breadcrumb">
            <a href="index.jsp">صفحه اصلی</a><span>›</span><a href="#">ثبت نام</a>
        </div>
    </div>

        <form action="../RegisterController" method="post" name="frm" >
            <div class="full12">
            <div class="block grid9">
        	<h1 class="block-header">ثبت نام کاربر</h1>
            <div class="separator"></div>
            <div class="block-standart">
            	<div class="form inline">
                    <div class="group">
                        <p>
                            اگر شما ثبت نام کرده اید برای ورود به صفحه <a href="login.jsp" style="color:green" > ورود کاربران </a>بروید.
                        </p>
                    </div>
                    <div class="group">
                        <h2>اطلاعات شخصی</h2>
                    </div>
                    <div class="group">
                        <label class="label">نام <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="text" name="name"></div>
                    </div>
                    <div class="group">
                        <label class="label">نام خانوادگی <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="text" name="lastname"></div>
                    </div>
                    <div class="group">
                        <label class="label">ایمیل <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="text" name="email"> </div>
                        <div class="message" style="visibility: collapse" id="errorEmailMessage"> این ایمیل در سیستم موجود می باشد </div>
                    </div>
                    <div class="group">
                        <label class="label">تلفن <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="text" name="tell"></div>
                    </div>
                </div>
            </div>
            <div class="separator"></div>
            <div class="block-standart">
            	<div class="form inline">
                    <div class="group">
                        <h2>آدرس شما</h2>
                    </div>
                    <div class="group">
                        <label class="label">آدرس شما <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="text" name="address"></div>
                    </div>
                </div>
            </div>
            <div class="separator"></div>
            <div class="block-standart">
            	<div class="form inline">
                    <div class="group">
                        <h2>رمز عبور شما</h2>
                    </div>
                    <div class="group">
                        <label class="label">رمز عبور <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="password" name="password"></div>
                    </div>
                    <div class="group">
                        <label class="label">تکرار رمز عبور <span class="required">*</span></label>
                        <div class="controls"><input class="text" type="password" name="confirmpassword"></div>
                    </div>
                </div>
            </div>
            <div class="separator"></div>
            <div class="block-standart">
            	<div class="form">
                    <div class="group">
                        <div class="controls">
                            <button class="button" onclick="return val()" name="registerbutton">ثبت نام</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </form>
    <jsp:directive.include file="userMenu.jsp"/>
    <jsp:directive.include file="Footer.jsp"/>

    </div>

    <script>
        function val() {
            if(frm.password.value == "")
            {
                alert("Enter the Password.");
                frm.password.focus();
                return false;
            }
            if((frm.password.value).length < 8)
            {
                alert("password should be minimumi 8 characters.");
                frm.password.focus();
                return false;
            }
            if(frm.confirmpassword.value == "")
            {
                alert("Enter the Confrim Password.");
                return false;
            }
            if(frm.confirmpassword,value != frm.password.value)
            {
                alert("password confirmat does not match!");
                return false;
            }
            return true;
        }
    </script>

	</body>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</html>