<#include "layout.ftl">

<#macro overrideTitle>
    首页 -
</#macro>

<#macro overrideContent>
	<div class="main">
        <div class="container">
        	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
	              <ol class="carousel-indicators">
	                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
	                <li data-target="#carousel-example-generic" data-slide-to="6"></li>
	              </ol>

              <!-- Wrapper for slides -->
	              <div class="carousel-inner" role="listbox">
	                <div class="item active">
	                  <img src="upload/index-lunbo-1.jpg" alt="...">
	                  <div class="carousel-caption">
	                    5.22周日 第四届摄影拉开帷幕！史上最大规模千人摄影盛宴强势来袭!（免费）
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/index-lunbo-2.jpg" alt="...">
	                  <div class="carousel-caption">
	                    2016 霞浦全年计划
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/index-lunbo-3.jpg" alt="...">
	                  <div class="carousel-caption">
	                    【非洲摄影】7.30-8.8/8.12-21东非肯尼亚动物大迁徙，乞力马扎罗的雪，双飞摄影10日
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/index-lunbo-4.jpg" alt="...">
	                  <div class="carousel-caption">
	                    2016 广西桂林摄影创作团
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/index-lunbo-5.jpg" alt="...">
	                  <div class="carousel-caption">
	                    6-8月 巴丹吉林沙漠-山丹军马场-七彩丹霞-冰沟丹霞-门源花海，壮美西北8日摄影创作
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/index-lunbo-6.jpg" alt="...">
	                  <div class="carousel-caption">
	                    2016 捕加榜梯田最美光影，拍苗乡侗寨淳朴风情，大美黔东南7日风光、人文摄影创作团
	                  </div>
	                </div>
	                 <div class="item">
	                  <img src="upload/index-lunbo-7.jpg" alt="...">
	                  <div class="carousel-caption">
	                   【行摄湘西南】6-10月，迷雾小东江--光影紫鹊界--丹霞崀山7日独家摄影创作团
	                  </div>
	                </div>
	              </div>
	
	              <!-- Controls -->
	              <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	                <span class="sr-only">Previous</span>
	              </a>
	              <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	                <span class="sr-only">Next</span>
	              </a>
            </div>
            <div class="classBox">
                <div class="classNav">
                    <h2>作品集锦</h2>
                    <ul>
                        <li><a href="#">人像摄影</a>|</li>
                        <li><a href="#">风光摄影</a>|</li>
                        <li><a href="#">静物摄影</a>|</li>
                        <li><a href="#">婚纱摄影</a>|</li>
                        <li><a href="#">活动庆典</a>|</li>
                        <li class="last"><a class="last" href="#">其它</a></li>
                    </ul>
                </div>
                <div class="imgList clearfix">
                	<div class="row">
                        <#if (model.content?size)??&&(model.content?size>0)>
                            <#list model.content as model>
		                    <a href="${contextPath}/cameraman/photo/${model.id!}.html">
		                    	<div class="col-md-2">
		                            <img src="${(model.url)!}"> 
			                        <div class="caption">
			                            <h4>${model.album.title!}</h4>
			                            <p>作者：<span>alsanbro</span></p>
			                        </div>
		                    	</div>
		                    </a>
                            </#list>
                        </#if>
                    </div>
                </div>
            </div>
            
            <div class="classBox clearfix">           
                <div class="classBoxLeft">
                    <div class="classNav">
                        <h2>活动集锦</h2>
                        <ul> 
                            <li class="last"><a class="last" href="activity.html">更多>></a></li>
                        </ul>
                    </div>
                    <div class="contentList">
                        <div class="contentList-item">
                        	<a href="activity-detail.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-1.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>神农春摄</h2>
	                                <p class="caption-palce">地点：<span>神农架</span></p>
	                                <p class="caption-time">时间：<span>2016-06-01</span></p>
	                            </div>
                            </a>
                        </div>
                        <div class="contentList-item">
                        	<a href="activity-detail-one.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-2.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>贵州摄影</h2>
	                                <p class="caption-palce">地点：<span>贵州西江</span></p>
	                                <p class="caption-time">时间：<span>2016-04-13</span></p>
	                            </div>
                            </a>
                        </div>
                        <div class="contentList-item last">
                        	<a href="activity-detail.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-3.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>秦晋摄影</h2>
	                                <p class="caption-palce">地点：<span>壶口瀑布</span></p>
	                                <p class="caption-time">时间：<span>2016-05-20</span></p>
	                            </div>
                            </a>
                        </div>
                        <div class="contentList-item">
                        	<a href="activity-detail.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-4.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>千湖山秘境摄影</h2>
	                                <p class="caption-palce">地点：<span>云南 千湖山</span></p>
	                                <p class="caption-time">时间：<span>2016-06-21</span></p>
	                            </div>
                            </a>
                        </div>
                        <div class="contentList-item">
                        	<a href="activity-detail.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-5.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>色达摄影</h2>
	                                <p class="caption-palce">地点：<span>四川 色达</span></p>
	                                <p class="caption-time">时间：<span>2016-08-12</span></p>
	                            </div>
                            </a>
                        </div> 
                        <div class="contentList-item last">
                        	<a href="activity-detail.html">
	                            <div class="contentList-item-img">
                                    <img src="upload/activity-item-6.jpg">
	                            </div>
	                            <div class="contentList-item-caption">
	                                <h2>行摄湘西南</h2>
	                                <p class="caption-palce">地点：<span>湖南 小东江</span></p>
	                                <p class="caption-time">时间：<span>2016-05-28</span></p>
	                            </div>
                            </a>
                        </div>    
                    </div>
                </div>  
                <div class="classBoxRight">
                    <div class="classNav">
                        <h2>热门活动</h2>
                        <ul> 
                            <li class="last"><a class="last" href="activity.html">更多>></a></li>
                        </ul>
                    </div>
                    <div class="contentList">
                        <ol>
                            <li><a href="activity-detail-one.html">1.行摄云南361°，多1度的热爱</a></li>
                            <li><a href="activity-detail.html">2.我想带你看看太子湾，那些樱花开，顷刻散，韶华落...</a></li>
                            <li><a href="activity-detail-one.html">3. 【行摄云南B线】彩云之南，等你来...</a></li>
                            <li><a href="activity-detail.html">4. 【梦游天姥】上海最近的人文拍摄圣</a></li>
                            <li><a href="activity-detail-one.html">5. 2016行摄彩云之南全境之旅</a></li>
                            <li><a href="activity-detail.html">6. 朝拜贡嘎—红岩顶眺望</a></li>
                            <li><a href="activity-detail-one.html">7. 游侠勇者行摄——贵州闹元宵舞龙嘘...</a></li>
                            <li><a href="activity-detail.html">8. 【梅花七仙子】淀山湖梅园3.5外...</a></li>
                            <li><a href="activity-detail-one.html">9. 3月春来，梅花正开，3月2日灵峰...</a></li>
                            <li><a href="activity-detail.html">10. 藏年法会朝圣 ｜ 毛兰姆大法会...</a></li>
                        </ol>
                    </div>
                </div>
            </div>
            
            <div class="classBox">                
                <div class="classNav">
                    <h2>论坛精品</h2>
                    <ul> 
                        <li class="last"><a href="forum.html">更多>></a></li>
                    </ul>
                </div> 
                <div class="contentList">
                    <ul>
                        <li>
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/热门.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="#">热门贴（<span>151</span>）</a>
                                </dt>
                                <dd>简介：当前论坛热门帖子</dd>
                                <dd>贴数：721144</dd>
                            </dl>
                        </li>
                        <li class="middle">
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/精品.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="forum.html">精品贴（<span>241</span>）</a>
                                </dt>
                                <dd>简介：当前论坛精品贴子</dd>
                                <dd>贴数：211</dd>
                            </dl>
                        </li>
                        <li>
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/摄影技术.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="forum.html">摄影技术（<span>861</span>）</a>
                                </dt>
                                <dd>简介：摄影技术讨论交流</dd>
                                <dd>贴数：144</dd>
                            </dl>
                        </li>
                        <li>
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/器材.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="forum.html">摄影器材（<span>35</span>）</a>
                                </dt>
                                <dd>简介：摄影器材交流</dd>
                                <dd>贴数：785</dd>
                            </dl>
                        </li>
                        <li class="middle">
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/讲坛.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="forum.html">摄影讲坛（<span>56</span>）</a>
                                </dt>
                                <dd>简介：大神教学贴</dd>
                                <dd>贴数：1564</dd>
                            </dl>
                        </li>
                        <li>
                            <div class="img-icon">
                                <a href="forum.html"><img src="upload/二手.jpg"></a>
                            </div>
                            <dl>
                                <dt>
                                    <a href="forum.html">二手市场（<span>151</span>）</a>
                                </dt>
                                <dd>简介：二手器材市场</dd>
                                <dd>贴数：6521</dd>
                            </dl>
                        </li>
                    </ul>
                </div>    
                
            </div>
            
        </div>
    </div>
</#macro>

<@layout title=overrideTitle style=defaultStyle content=overrideContent script=defaultScript>
</@layout>