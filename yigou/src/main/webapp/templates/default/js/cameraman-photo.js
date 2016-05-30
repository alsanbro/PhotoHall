;(function($){
	
	var LightBox=function(settings){
		//保存当前构造函数的类
		var self=this;

		this.settings={
			speed:500
		};
		$.extend(this.settings,settings ||{});

		//创建遮罩和弹出框
		this.popupMask=$('<div id="G-lightbox-mask">');
		this.popupWin=$('<div id="G-lightbox-popup">');

		//保存body
		this.bodyNode=$(document.body);

		//渲染剩余的bom，并且插入到body
		this.renderDOM();

		//图片预览区域
		this.picViewArea=this.popupWin.find('div.lightbox-pic-view');
		//获取图片
		this.popupPic=this.popupWin.find('img.lightbox-image');
		//获取描述区域
		this.picCaptionArea=this.popupWin.find('div.lightbox-pic-caption');
		//获取左右切换按钮
		this.nextBtn=this.popupWin.find('span.lightbox-next-btn');
		this.prevBtn=this.popupWin.find('span.lightbox-prev-btn');
		//获取图片描述区域中的各种信息
		this.captionText=this.popupWin.find('p.lightbox-pic-desc');//图片标题
		this.cerrentIndex=this.popupWin.find('span.lightbox-of-index');//图片索引
		this.closeBtn=this.popupWin.find('span.lightbox-close-btn');//图片关闭按钮

		//准备开发事件委托，获得组数据
		this.groupName=null;
		this.groupData=[];//放置同一组数据
		this.bodyNode.delegate('.js-lightbox,[data-role=lightbox]','click',function(e){
				//阻止事件冒泡
				e.stopPropagation();
				
				var currentGroupName=$(this).attr('data-group');

				if (currentGroupName!=self.groupName) {
					self.groupName=currentGroupName;
					//根据当前组名获取同一组数据
					self.getGroup();
				};

				//初始化弹出
				self.initPopup($(this));


		});

		//关闭弹出
		this.popupMask.click(function(){
			$(this).fadeOut();
			self.popupWin.fadeOut();
			self.clear=false;
		});
		this.closeBtn.click(function(){
			self.popupMask.fadeOut();
			self.popupWin.fadeOut();
			self.clear=false;
		});

		//绑定上下切换按钮事件
		this.flag=true;
		this.nextBtn.hover(function(){
			if (!$(this).hasClass('disabled')&&self.groupData.length>1) {
				$(this).addClass('lightbox-next-btn-show');
			};
		},function(){
			$(this).removeClass('lightbox-next-btn-show');
		}).click(function(e){
			if (!$(this).hasClass('disabled')&&self.flag) {
				self.flag=false;
				e.stopPropagation();
				self.goto('next');
			};
		});
		

		this.prevBtn.hover(function(){
			if (!$(this).hasClass('disabled')&&self.groupData.length>1) {
				$(this).addClass('lightbox-prev-btn-show');
			};
		},function(){
			$(this).removeClass('lightbox-prev-btn-show');
		}).click(function(e){
			
			if (!$(this).hasClass('disabled')&&self.flag) {
				self.flag=false;
				e.stopPropagation();
				self.goto('prev');
			};
		});

		// 判断是不是IE6
		this.isIE6=/MSIE 6.0/gi.test(window.navigator.userAgent);

		//绑定窗口调整事件
		var timer=null;
		this.clear=false;

		$(window).resize(function(){
			if (self.clear) {
				window.clearTimeout(timer);
				timer=window.setTimeout(function(){
					self.loadPicSize(self.groupData[self.index].src);
				},500);
				
			};

			if (self.isIE6) {
				self.popupMask.css({
					width:$(window).width(),
					height:$(window).height(),
				})
			};
			
		}).keyup(function(e){
			var keyValue=e.which;
			if (self.clear){
				if (keyValue==38||keyValue==37) {
					self.prevBtn.click();
				}else if (keyValue==40||keyValue==39) {
					self.nextBtn.click();
				};
			}
			
		});

		// 如果是IE6
		if (this.isIE6) {
			$(window).scroll(function(){
				self.popupMask.css('top',$(window).scrollTop());
				self.popupWin.css('top',$(window).scrollTop());
			});
		};

	};

	LightBox.prototype={

		goto:function(dir){
			if (dir==='next') {

				this.index++;
				if (this.index>=this.groupData.length-1) {
					this.nextBtn.addClass('disabled').removeClass('lightbox-next-btn-show');
				};
				if (this.index!=0) {
					this.prevBtn.removeClass('disabled');
				};

				var src=this.groupData[this.index].src;
				this.loadPicSize(src);


			}else if (dir==='prev') {
				
				this.index--;
				if (this.index!=this.groupData.length-1) {
					this.nextBtn.removeClass('disabled');
				};
				if (this.index<=0) {
					this.prevBtn.addClass('disabled').removeClass('lightbox-prev-btn-show');
				};

				var src=this.groupData[this.index].src;
				this.loadPicSize(src);
			};

		},


		loadPicSize:function(sourseSrc){
			var self=this;
			self.popupPic.css({
				width:'auto',
				height:'auto'
			}).hide();

			this.picCaptionArea.hide();

			this.preLoadImg(sourseSrc,function(){
				
				self.popupPic.attr("src",sourseSrc);
				var picWidth=self.popupPic.width();
				    picHeight=self.popupPic.height();
			    self.changePic(picWidth,picHeight);
			});
		},

		changePic:function(width,height){

			var self=this,
				winWidth=$(window).width(),
				winHeight=$(window).height();

			//如果图片的宽高大于浏览器视口的宽高比例，看是否溢出
			var scale=Math.min(winWidth/(width+10),winHeight/(height+10),1);

			width=width*scale;
			height=height*scale;

			this.picViewArea.animate({
				width:width-10,
				height:height-10
			},self.settings.speed);

			var top=(winHeight-height)/2;

			if (this.isIE6) {
				top+=$(window).scrollTop();
			};
			

			this.popupWin.animate({
				width:width,
				height:height,
				marginLeft:(winWidth-width)/2,
				top:(winHeight-height)/2
			},self.settings.speed,function(){
				self.popupPic.css({
					width:width-10,
					height:height-10
				}).fadeIn();
				self.picCaptionArea.fadeIn();
			});
			self.flag=true;
			self.clear=true;

			//设置标题和索引
			this.captionText.text(this.groupData[this.index].caption);
			this.cerrentIndex.text((this.index+1)+" of "+this.groupData.length);

		},

		preLoadImg:function(src,callback){

			var img=new Image();
			if(!!window.ActiviXObject){
				img.onreadystatechange=function(){
					if(this.readyState=="complete"){
						callback();
					};
				};
			}else{
				img.onload=function(){
					callback();
				};
			};
			img.src=src;
		},

		showMaskAndPopup:function(sourseSrc,currentId){
			var self=this;
			this.popupPic.hide();
			this.picCaptionArea.hide();

			

			var winWidth=$(window).width(),
				winHeight=$(window).height();

			this.picViewArea.css({
				width:winWidth/2,
				height:winHeight/2
			});

			

			if (this.isIE6) {
				var scrollTop=$(window).scrollTop();
				this.popupMask.css({
					width:winWidth,
					height:winHeight,
					top:scrollTop,
				});
			};

			this.popupMask.fadeIn();
			this.popupWin.fadeIn();

			var viewHeight=winHeight/2+10,
				viewWidth=winWidth/2+10;
			var topAnimate=(winHeight-viewHeight)/2;
			
			this.popupWin.css({
				width:viewWidth,
				height:viewHeight,
				marginLeft:viewWidth/2,
				top:(this.isIE6?-(viewHeight+scrollTop):-viewHeight),
			}).animate({
				top:(this.isIE6?(topAnimate+scrollTop):topAnimate),
			},self.settings.speed,function(){
				//加载图片
				self.loadPicSize(sourseSrc);
			});

			//根据当前点击的元素id获取在当前组别里面的索引

			this.index=this.getIndesOf(currentId);
			//$(this).index();

			var groupDataLength=this.groupData.length;
			if(groupDataLength>1){
				//this.nextBtn   this.prevBtn
				if(this.index===0){
					this.prevBtn.addClass('disabled');
					this.nextBtn.removeClass('disabled');
				}else if(this.index===groupDataLength-1){
					this.nextBtn.addClass('disabled');
					this.prevBtn.removeClass('disabled');
				}else{
					this.prevBtn.removeClass('disabled');
					this.nextBtn.removeClass('disabled');
				};
			}else{
				this.prevBtn.addClass('disabled');
				this.nextBtn.addClass('disabled');
			};
		},

		getIndesOf:function(currentId){

			var index=0;
			$(this.groupData).each(function(i){
				index=i;
				if(this.id===currentId){
					return false;
				};
			});
			return index;
		},
		
		initPopup:function(currentObj){
			var self=this;
				sourseSrc=currentObj.attr('data-sourse'),
				currentId=currentObj.attr('data-id');
			this.showMaskAndPopup(sourseSrc,currentId);
		},
		
		getGroup:function(){
			var self=this;

			//根据当前组别名称获取页面中所有相同组名的对象
			var groupList=this.bodyNode.find('*[data-group='+this.groupName+']');
			
			//清空数组数据
			self.groupData.length=0;
			groupList.each(function(){
				self.groupData.push({
					src:$(this).attr('data-sourse'),
					id:$(this).attr('data-id'),
					caption:$(this).attr('data-caption'),
				});
			});

		},
		renderDOM:function(){
			var strDom='<div class="lightbox-pic-view">'+
			    			'<span class="lightbox-btn lightbox-prev-btn"></span>'+
			    			'<img class="lightbox-image" src="images/2-2.jpg">'+
			    			'<span class="lightbox-btn lightbox-next-btn"></span>'+
			    			'<div class="lightbox-pic-caption">'+
			    			'<div class="lightbox-caption-area">'+
			    				'<p class="lightbox-pic-desc"></p>'+
			    				'<span class="lightbox-of-index"></span>'+
			    			'</div>'+
			    			'<span class="lightbox-close-btn"></span>'+
			    		'</div>'+
			    		'</div>';
			//插入到this.popupWin
			this.popupWin.html(strDom);
			//把遮罩和弹出框插入到body
			this.bodyNode.append(this.popupMask);
			this.bodyNode.append(this.popupWin);
		},
	};

	window["LightBox"]=LightBox;

})(jQuery);

