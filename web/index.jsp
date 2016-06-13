
<html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    	<meta charset="utf-8">
        <title>  صفحه ی اصلی  </title>
        <link rel="stylesheet" href="css/markup.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/elastislide.css">
        <link rel="stylesheet" href="css/jquery.jqzoom.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
        <script src="js/jquery.jqzoom-core-pack.js" type="text/javascript"></script>
        <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="js/modernizr.custom.17475.js" type="text/javascript"></script>
        <script src="js/jquery.elastislide.js" type="text/javascript"></script>
        <script src="js/tabs.js" type="text/javascript"></script>
		<script src="js/cycle.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
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

        <div class="ns-header" >
            <jsp:directive.include file="header.jsp" />
        <div class="content pivot grid">
        <div class="full12 navnav">
	<nav class="pivot grid">
                <ul class="nav">
                    <li class="nav-item"><a class="nav-item-link" href="index.jsp"><div class="nav-item-home-icon"></div></a></li>
                    <li class="nav-item"><a class="nav-item-link" href="gridLaptopApple.html">لپ تاپ</a>
						<div class="nav-item-drop">
							<div class="nav-item-body">
								<div class="nav-item-sub">
								<h3>زیر مجموعه ها</h3>
								<ul>
                                        <li><a href="gridLaptopApple.html">Apple</a></li>
                                        <li><a href="">Asus</a></li>
                                        <li><a href="">Dell</a></li>
                                 </ul>
								</div>
							</div>
						</div>
					</li>           
                    <li class="nav-item"><a class="nav-item-link" href="gridTabletSamsung.html">تبلت</a>
						<div class="nav-item-drop">
							<div class="nav-item-body">
								<div class="nav-item-sub">
								<h3>زیر مجموعه ها</h3>
								<ul>
                                        <li><a href=""></a>Apple</li>
                                        <li><a href="gridTabletSamsung.html">Samsung</a></li>
                                        <li><a href="">Microsoft</a></li>
                                 </ul>
								</div>
							</div>
						</div>
					</li>
                  
                    <li class="nav-item"><a class="nav-item-link" href="gridPhoneSamsung.html">تلفن همراه</a>
						<div class="nav-item-drop">
							<div class="nav-item-body">
								<div class="nav-item-sub">
								<h3>زیر مجموعه ها</h3>
								<ul>
                                        <li><a href="">Apple</a></li>
                                        <li><a href="gridPhoneSamsung.html">Samsung</a></li>
                                        <li><a href="">LG</a></li>
                                 </ul>
								</div>
							</div>
						</div>
					</li>       
            </ul>
    </nav>
</div>

        <jsp:directive.include file="userMenu.jsp"/>
        <jsp:directive.include file="Footer.jsp"/>
	
	</div>
	</body>
</html>