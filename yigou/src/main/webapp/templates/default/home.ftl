<#ftl encoding='UTF-8'>
<#assign contextPath = ""/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎来到PHOTOHALL</title>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/templates/default/css/public.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/css/home.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
	
	<div class="main">
    	<div id="video-container" style="display: block;">
	        <video autoplay="autoplay" loop="loop" class="fillWidth" >
	            <source src="upload/siftr.mp4" type="video/mp4">
	            <source src="upload/siftr.webm" type="video/webm">
	            <source src="upload/siftr.ogv" type="video/ogv">
	        </video>
        </div>	
		
		<div class="container navigation">
	        <nav class="navbar navbar-default">
	            <div class="container-fluid">
	                <div class="navbar-header">
	                    <button id="menu" type="button" class="navbar-toggle" data-toggle="collapse">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                    </button>
	                    <a class="navbar-brand" href="index.html"><img class="logo-small" src="upload/logo.png"></a>
	                </div>
	                <ul class="nav navbar-nav">
	                    <li class="product-menu"><a href="index.html">首页</a></li>
	                    <li class="product-menu"><a href="photowebsite.html">PHOTOHALL网站建设者</a></li>
	                    <li class="product-menu"><a href="organizer.html">PHOTOHALL网站组织者</a></li>
	                    
	                </ul>
	                <ul class="nav navbar-nav navbar-right">
	                    <li><a href="visionapi.html">API文档</a></li>
	                    <li><a href="https://medium.com/@siftrco" target="_blank">博客</a></li>
	                    <li><a href="faq.html">常见问题</a></li>
	                    <li><a href="sign_in.html">登录</a></li>
	                </ul>
	            </div>
	        </nav>
   		 </div>

        <div class="information">
	        <div class="information-content">
	            <div class="container">
	                <div class="wrapper">
	                    <div class="article title">
	                        <img class="logo" src="upload/logo.png" alt="Siftr">
	                        <h2>PHOTOHALL摄影平台</h2>
	                    </div>
	                    <div class="article description">
	                        <p>PhotoHall是一个超级强大的人工智能平台，用来帮助您解决一切有关摄影、图片的烦恼</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>



     <script src="js/bootstrap.min.js"></script>
</body>
</html>