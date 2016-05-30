<#include "layout.ftl">

<#macro overrideTitle>
    个人中心
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/individual.css">
</#macro>
<#macro overrideScript>
	<script src="${contextPath}/templates/default/js/individual.js"></script> 
</#macro>
<#macro overrideContent>	
	<div class="main">
		<div class="container">
			<div class="userInfoBox">
				<div class="userInfoImageWp">
					<div class="userInfoImage">
						<img src="upload/forum-detail-left-img.jpg" width="148px" height="198px">
						<a href="pull-head/index.html" target="_blank">更换头像</a>
					</div>
					<div class="userActive">
						<a href="#"><span class="glyphicon glyphicon-plus"></span>加好友</a>
						<a href="#"><span class="glyphicon glyphicon-envelope"></span>私信</a>
					</div>
				</div>
				<div class="userInfoPro">
					<h1>alsanbro</h1>
					<p>性别:<span>男</span></p>
				</div>
			</div>

			<ul class="mainNav">
				<li><a class="hover">Ta的领地</a></li>
				<li class="personInfo"><a>个人资料</a></li>
				<li class="personPhoto"><a>摄影作品</a></li>
				<li><a>帖子</a></li>
				<li><a>活动</a></li>
				<li class="wordBoard"><a>留言板</a></li>
			</ul>

			
			<div class="mainContainer">
				<div class="userInfo" style="display: block;">
					<div class="userInfoEdit">
						<div class="userBasicInfoEdit">
							<div class="userInfoTitle">
								<h1>基本信息</h1>
								<a class="infoSH" href="#">编辑</a>
							</div>
							<ul class="form">
								<li>
									<label>用户名</label>
									<div class="formCnt">
										<div class="infoShow">
											alsanbro
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>

								</li>
								<li>
									<label>真实姓名</label>
									<div class="formCnt">
										<div class="infoShow">
											alsanbro
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
									
								</li>
								<li>
									<label>性别</label>
									<div class="formCnt">
										<div class="infoShow">
											alsanbro
										</div>
										<div class="infoHidden">
											<input class="sex" type="radio" value="男" name="sex">男
											<input class="sex" type="radio" value="女" name="sex">女
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
								<li>
									<label>所在地</label>
									<div class="formCnt">
										<div class="infoShow">
											杭州
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
								<li>
									<label>生日</label>
									<div class="formCnt">
										<div class="infoShow">
											2001-01-01
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="userLinkInfoEdit">
							<div class="userInfoTitle">
								<h1>联系方式</h1>
								<a class="linkSH" href="#">编辑</a>
							</div>
							<ul class="form">
								<li>
									<label>邮箱</label>
									<div class="formCnt">
										<div class="infoShow">
											489645258@qq.com
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
								<li>
									<label>QQ</label>
									<div class="formCnt">
										<div class="infoShow">
											489645258
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
								<li>
									<label>手机</label>
									<div class="formCnt">
										<div class="infoShow">
											13589698969
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
								<li>
									<label>固定电话</label>
									<div class="formCnt">
										<div class="infoShow">
											0661-696969
										</div>
										<div class="infoHidden">
											<input type="text">
										</div>
									</div>
									<div class="infoMsg">
										<div class="infoMsgShow">公开</div>
										<div class="infoMsgHidden">
											<select>
												<option value="1" selected="selected">所有人可见</option>
												<option value="2">仅好友可见</option>
												<option value="3">仅自己可见</option>
											</select>	
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="photography" style="display: none;">
					<a class="newpost" href="release.html">+发表新作品</a>
					<ul class="imagesBox">
						<li>
							<a href="#"><img src="upload/1.jpg" width="240px" height="240px"></a>
						</li>
						<li>
							<a href="#"><img src="upload/2.jpg" width="240px" height="240px"></a>
						</li>
						<li>
							<a href="#"><img src="upload/3.jpg" width="240px" height="240px"></a>
						</li>
						<li>
							<a href="#"><img src="upload/1.jpg" width="240px" height="240px"></a>
						</li>
						<li>
							<a href="#"><img src="upload/1.jpg" width="240px" height="240px"></a>
						</li>
					</ul>
				</div>
				<div class="bbs" style="display: none;">
					<div class="titleArea">
						<h1>我要留言</h1>
						<p>还可以输入<span class="lettercount">300</span>字</p>
					</div>
					<div class="textArea">
						<textarea placeholder="你想对Ta说什么？"></textarea>
						<div class="releaseInfo">留言成功</div>
						<a>发表</a>
					</div>
					<div class="listMsgBox">
						<h1>好友留言</h1>

					</div>
				</div>
			</div>
			
		</div>
	</div>
  </#macro>


<#macro overrideNav>
<ol class="breadcrumb no-margin">
    <li><a href="${contextPath}/admin/index.html">首页</a></li>
    <li><a href="${contextPath}/admin/cameraman.html">用户</a></li>
    <li class="active">
		<#if model??>
            编辑用户
		<#else>
            添加用户
		</#if>
	</li>
</ol>
</#macro>

<@layout title=overrideTitle style=overrideStyle content=overrideContent script=overrideScript nav=overrideNav>
</@layout>