<#include "layout.ftl">

<#macro overrideTitle>
    活动
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/activity.css">
</#macro>
<#macro overrideScript> 
    <script src="${contextPath}/templates/default/js/activity.js"></script>
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
	              </ol>

             	 <!-- Wrapper for slides -->
	              <div class="carousel-inner" role="listbox">
	                <div class="item active">
	                  <img src="upload/activity-lunbo-1.jpg" alt="...">
	                  <div class="carousel-caption">
	                    【仙境张家界】带你深度领略湘西最美风情（摄影/深度）
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/activity-lunbo-2.jpg" alt="...">
	                  <div class="carousel-caption">
	                    2016年4-6月 新丝绸之路
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/activity-lunbo-3.jpg" alt="...">
	                  <div class="carousel-caption">
	                    4-10月 神奇鄂西
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/activity-lunbo-4.jpg" alt="...">
	                  <div class="carousel-caption">
	                    4-11月 马岭河-万峰林-坝美-普者黑-抚仙湖8日
	                  </div>
	                </div>
	                <div class="item">
	                  <img src="upload/activity-lunbo-5.jpg" alt="...">
	                  <div class="carousel-caption">
	                    2016年 三江源+色达 13日行摄之旅
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
    		<div class="index">
    			<div class="keywords">
    				<ul class="clearfix">
	    				<li><a href="#">全部</a></li>
	    				<li><a href="#">微课堂</a></li>
	    				<li><a href="#">组团摄影</a></li>
	    				<li><a href="#">赛事</a></li>
	    				<li><a href="#">展览</a></li>
	    			</ul>
    			</div>
    			<div class="order">
    				<ul>
	    				<li><a href="#">按发布时间</a></li>
	    				<li><a href="#">按举办时间</a></li>
	    			</ul>
    			</div>
    		</div>
    		<div class="actives">
    			<div class="act-item clearfix">
    				<div class="act-img">
    					<a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-1.jpg"></a>
    				</div>
    				<div class="act-detail">
    					<a href="${contextPath}/activity-detail.html">
    						<h4> 【神农春摄】5.13-17，怒放神农架高山杜鹃-原生态金丝猴-静谧大九湖-三峡纤夫，5日摄影创作团 </h4>
   						</a>
    					<p>活动特色：神农架的春天来的虽晚，但格外灿烂，神农顶一线的高山杜鹃怒放着它的灿烂，仅此一批，花期最佳时！ 独家进入神农架科考基地，拍摄国家一级保护动物——神农架野...</p>
    					<p>行程：宜昌 中华蜜蜂崖 香溪源 神农坛 木鱼镇 神农顶 大九湖 沿渡河镇 神农溪 宜昌</p>
    					<p>目的地：神农架 神农顶 大九湖 神农溪</p>
    					<span>报名人数：<em>24</em>人</span>
    					<span>价格：<em>¥2580</em></span>
    					<a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
    				</div>
    			</div>
    			<div class="act-info">
    				<span>集合地点：湖北省 宜昌</span>
    				<span class="time">时间：2016-01-16</span>
    			</div>
    		</div>

    		<div class="actives">
    			<div class="act-item clearfix">
    				<div class="act-img">
    					<a href="${contextPath}/activity-detail-one.html"><img src="upload/activity-item-2.jpg"></a>
    				</div>
    				<div class="act-detail">
    					<a href="${contextPath}/activity-detail-one.html"><h4> 【贵州摄影】2016 捕加榜梯田最美光影，拍苗乡侗寨淳朴风情，大美黔东南7日风光、人文摄影创作团 </h4></a>
    					<p>活动特色：黔东南深度摄影之行，在这原生态民俗风情之地创作秀美风光与淳朴人文大片。 加榜梯田吸取了天下梯田之精华，其规模宏大，气势磅礴，且线条优美，实乃...</p>
    					<p>行程：贵阳 肇兴侗寨 从江 加榜梯田 凯里 西江苗寨 贵阳</p>
    					<p>目的地：西江 朗德 凯里 加榜</p>
    					<span>报名人数：<em>72</em>人</span>
    					<span>价格：<em>¥3180</em></span>
    					<a href="${contextPath}/activity-detail-one.html"><button class="btn btn-info pull-right">查看详情</button></a>
    				</div>
    			</div>
    			<div class="act-info">
    				<span>地点：贵州省 贵阳</span>
    				<span class="time">时间：2016-04-13</span>
    			</div>
    		</div>

    		<div class="actives">
                <div class="act-item clearfix">
                    <div class="act-img">
                        <a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-3.jpg"></a>
                    </div>
                    <div class="act-detail">
                        <a href="${contextPath}/activity-detail.html"><h4> 【秦晋摄影】4-11月，壶口瀑布--波浪谷--陕北安塞腰鼓--乾坤湾--山西碛口李家山，7日风光人文摄影创作团</h4></a>
                        <p>活动特色：秦晋两省穿越线路，拍摄题材极其丰富，重磅推出！尽收陕北、晋西风光人文，专业摄影领队带队！ 深入山西碛口、李家山，这里是黄土高原上的世...</p>
                        <p>行程：山西省 太原 李家山 碛口 波浪谷 安塞 乾坤湾 壶口瀑布 洛川 陈炉古镇 西安 …</p>
                        <p>目的地：山西 乾坤湾 陕西 碛口</p>
                        <span>报名人数：<em>152</em>人</span>
                        <span>价格：<em>¥3580</em></span>
                        <a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
                    </div>
                </div>
                <div class="act-info">
                    <span>地点：山西省 太原</span>
                    <span class="time">时间：2016-05-20</span>
                </div>
            </div>
            <div class="actives">
                <div class="act-item clearfix">
                    <div class="act-img">
                        <a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-4.jpg"></a>
                    </div>
                    <div class="act-detail">
                        <a href="${contextPath}/activity-detail.html"><h4> 【千湖山秘境摄影】5-6月 丽江花海子-千湖山碧沽天池-香格里拉花海秘境-梅里雪山7日摄影创作团！ </h4></a>
                        <p>活动特色：香格里拉千湖山碧沽天池，电影“无极”外景地，地毯式杜鹃花海； 游侠客独家安排千湖山环境人像摄影，湖泊、草甸、花海中拍摄唯美...</p>
                        <p>行程：丽江 香格里拉 梅里 梅里雪山 千山湖碧沽天池 香格里拉 天山…</p>
                        <p>目的地：千湖山 梅里 香格里拉 碧沽天池</p>
                        <span>报名人数：<em>73</em>人</span>
                        <span>价格：<em>¥2980</em></span>
                        <a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
                    </div>
                </div>
                <div class="act-info">
                    <span>地点：云南省 丽江</span>
                    <span class="time">时间：2016-06-21</span>
                </div>
            </div>

            <div class="actives">
                <div class="act-item clearfix">
                    <div class="act-img">
                        <a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-5.jpg"></a>
                    </div>
                    <div class="act-detail">
                        <a href="${contextPath}/activity-detail.html"><h4> 【色达摄影】6-8月：佛国色达-若尔盖草原花湖-花开年保玉则，全球最壮观的五明佛学院10日摄影环线!</h4></a>
                        <p>活动特色：这是游侠客独家策划的融合川西北风光精华+青海年保玉则，摄影主题，不赶行程，游走拍摄，保证拍摄时间； 拍摄题材丰富：既有色达五明佛学院、色达天葬台、藏区...</p>
                        <p>行程：成都 若尔盖 唐克 阿坝 班玛 色达 炉霍 新都桥 成都…</p>
                        <p>目的地：年保玉则 色达 四川 青海</p>
                        <span>报名人数：<em>89</em>人</span>
                        <span>价格：<em>¥4150</em></span>
                        <a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
                    </div>
                </div>
                <div class="act-info">
                    <span>地点：四川 成都</span>
                    <span class="time">时间：2016-08-12</span>
                </div>
            </div>

            <div class="actives">
                <div class="act-item clearfix">
                    <div class="act-img">
                        <a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-6.jpg"></a>
                    </div>
                    <div class="act-detail">
                        <a href="${contextPath}/activity-detail.html"><h4>【亚青寺+色达摄影】5-10月：佛国色达-秘境亚青寺-德格印经院-玉隆拉措-新都桥，川藏北线10日人文风光摄影环线！</h4></a>
                        <p>活动特色：游侠客独家策划色达+亚青寺摄影进阶路线，深入藏区腹地，追寻藏传佛教最神秘最真实一面，深厚的人文题材和国道317沿线的壮美风光，摄影发烧友此生必走的线...</p>
                        <p>行程：成都 观音桥 色达五明佛学院 炉霍县 德格 亚青寺 甘孜 新都桥 成都…</p>
                        <p>目的地：四川 成都 色达 德格印经院</p>
                        <span>报名人数：<em>75</em>人</span>
                        <span>价格：<em>¥3980</em></span>
                        <a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
                    </div>
                </div>
                <div class="act-info">
                    <span>地点：四川 成都</span>
                    <span class="time">时间：2016-07-19</span>
                </div>
            </div>

            <div class="actives">
                <div class="act-item clearfix">
                    <div class="act-img">
                        <a href="${contextPath}/activity-detail.html"><img src="upload/activity-item-7.jpg"></a>
                    </div>
                    <div class="act-detail">
                        <a href="${contextPath}/activity-detail.html"><h4>【行摄湘西南】6-10月，寻梦迷雾小东江--光影紫鹊界--神秘花瑶-丹霞崀山7日独家摄影创作团 </h4></a>
                        <p>活动特色：全国独家首创——湘西南环线梦幻摄影线路，集绝美风光人文于一身，由专业摄影领队带队！ 湖南，不仅仅只有凤凰张家界！游侠客独家深度发掘的...</p>
                        <p>行程：长沙 紫鹤界 花瑶古寨 资兴 小东江 板梁古民居 小东江 长沙…</p>
                        <p>目的地：湖南 小东江 紫鹊界 长沙</p>
                        <span>报名人数：<em>37</em>人</span>
                        <span>价格：<em>¥3380</em></span>
                        <a href="${contextPath}/activity-detail.html"><button class="btn btn-info pull-right">查看详情</button></a>
                    </div>
                </div>
                <div class="act-info">
                    <span>地点：湖南省 长沙</span>
                    <span class="time">时间：2016-05-28</span>
                </div>
            </div>
    		<div class="page pull-right clearfix">
    			<nav>
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
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