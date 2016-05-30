$(function(){
	var width=$('.main .mainNav').css('width');
	// alert(width);
	var w=(parseFloat(width)-102)/6;
	$('.main .mainNav li').css('width',w+'px');
	$(window).resize(function(){
		width=$('.main .mainNav').css('width');
		var w=(parseFloat(width)-102)/6;
		$('.main .mainNav li').css('width',w+'px');
	});

	$('.main .mainNav li').click(function(){
		$(this).css({
			'border-bottom-color':'#fff',
			'background':'#fff',
		});
		$(this).siblings().css({
			'border-bottom-color':'#d9d9d9',
			'background':'#f2f2f2',
		});
		$(this).find('a').css('outline','none');
	});


	//个人信息编辑/保存
	var flag=1;
	$('.main .userInfo .userInfoEdit .userInfoTitle .infoSH').click(function(){
		if (flag==1) {
			$(this).text('保存');
			toggleBasicInfo();
			flag=0;
		}else{
			$(this).text('编辑');
			infoEidtSave();
			infoMsgEditSave()
			toggleBasicInfo();
			flag=1;
		};
	});
	$('.main .userInfo .userInfoEdit .userInfoTitle .linkSH').click(function(){
		if (flag==1) {
			$(this).text('保存');
			toggleLinkInfo();
			flag=0;
		}else{
			$(this).text('编辑');
			infoLinkEidtSave();
			infoLinkMsgEditSave();
			toggleLinkInfo();
			flag=1;
		};
	});
	


	function toggleBasicInfo(){
		if (flag==1) {
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoShow').hide();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoHidden').show();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgShow').hide();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgHidden').show();
		}else{

			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoShow').show();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoHidden').hide();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgShow').show();
			$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgHidden').hide();
		};
	};
	
	function toggleLinkInfo(){
		if (flag==1) {
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoShow').hide();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoHidden').show();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgShow').hide();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgHidden').show();
		}else{
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoShow').show();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoHidden').hide();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgShow').show();
			$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgHidden').hide();
		};
	};


	
	// 设置获取基本信息中的左侧值
	function infoEidtSave(){
		var inputVal=new Array(5);
		var sexVal=null;
		var i=-1;
		$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoHidden input:text').each(function(){
			i++;
			inputVal[i]=$(this).val();		
		});
		sexVal=$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoHidden input:radio:checked').val();
		inputVal.splice(2,0,sexVal);
		
		var i=-1;
		$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .formCnt .infoShow').each(function(){
			i++;
			$(this).text(inputVal[i]);		
		});	
	};
	
	// 设置获取基本信息中的右侧隐私值
	function infoMsgEditSave(){
		var inputVal=new Array(5);
		var i=-1;
		$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgHidden select').each(function(){
			i++;
			inputVal[i]=$(this).find('option:selected').text();
		});
		
		var i=-1;
		$('.main .userInfo .userInfoEdit .userBasicInfoEdit .form li .infoMsgShow').each(function(){
			i++;
			$(this).text(inputVal[i]);		
		});
	};


	// 设置获取联系信息中的左侧值
	function infoLinkEidtSave(){
		var inputVal=new Array(4);
		var i=-1;
		$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoHidden input:text').each(function(){
			i++;
			inputVal[i]=$(this).val();	
		});		
		
		var i=-1;
		$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .formCnt .infoShow').each(function(){
			i++;
			$(this).text(inputVal[i]);		
		});	
	};
	
	// 设置获取联系信息中的右侧隐私值
	function infoLinkMsgEditSave(){
		var inputVal=new Array(5);
		var i=-1;
		$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgHidden select').each(function(){
			i++;
			inputVal[i]=$(this).find('option:selected').text();
		});
		
		var i=-1;

		$('.main .userInfo .userInfoEdit .userLinkInfoEdit .form li .infoMsgShow').each(function(){
			i++;

			$(this).text(inputVal[i]);		
		});
	};


	//评论框弹出与隐藏
	var flag1=0;
	$('.listMsgBox').on("click", ".feed-comment", function(){
		// $(this).preventDeafault();
		if (flag1==0) {
			$(this).parents('.Tw-func').next().show();
			flag1=1;
		}else{
			$(this).parents('.Tw-func').next().hide();
			flag1=0;
		};
	});

	//回复框弹出与隐藏
	var flag2=0;
	$('.listMsgBox').on("click", ".reply", function(){
		if (flag2==0) {
			$(this).parent().next().show();
			flag2=1;
		}else{
			$(this).parent().next().hide();
			flag2=0;
		};
	});

	//鼠标指针划过评论，显示删除
	$('.listMsgBox').on("mouseover", ".Tw-handle", function(){
		$(this).find('.feed-delete').show();
	}).on("mouseout", ".Tw-handle", function(){
		$(this).find('.feed-delete').hide();
	});



	//发表评论事件
	var commentText=null;
	var commentTime=null;
	$('.bbs .textArea a').on("click", function(){
		commentText=$('.bbs .textArea textarea').val();
		commentTime=getSTime();
		if(!commentText){
			alert('评论不能为空!');
		}else{
			appendComment(commentText,commentTime);
			$('.bbs .textArea textarea').val("");
			$('.bbs .textArea .releaseInfo').fadeIn(3000);
			setInterval(function(){
				$('.bbs .textArea .releaseInfo').fadeOut('3000');
			},1000);
			$(".titleArea .lettercount").text("300");
		}
	});

	//发表回复
	$('.bbs .listMsgBox').on("click", "p.Tw-btn-op a",function(){
		commentText=$(this).parent().parent().find('textarea').val();
		commentTime=getSTime();
		if(!commentText){
			alert('回复不能为空!');
		}else{
			appendReply(commentText,commentTime);
			$(this).parent().parent().find('textarea').val("");
			$(this).children().text("140");
			//回复成功后隐藏回复框
			// $(this).parent().parent().find('textarea').hide();
			// $(this).parent().parent().find('.releaseInfo').fadeIn(3000);
			// setInterval(function(){
			// 	$(this).parent().parent().find('.releaseInfo').fadeOut('3000');
			// },1000);
		}
	});

	//取消第一条回复的上边框
	$('.Tw-commentlist .Tw-comment').first().css('border-top','red');

	


	//删除评论事件
	$('.bbs .listMsgBox').on('click', '.feed-delete',function(){
		if (confirm('是否将此留言信息删除')) {
			$(this).parents('.Tw-feed-list').remove();
		};
	});


	//mainNav的点击切换
	$('.mainNav li.personInfo').click(function(){
		$('.mainContainer .userInfo').show().siblings().hide();
	});
	$('.mainNav li.personPhoto').click(function(){
		$('.mainContainer .photography').show().siblings().hide();
	});
	$('.mainNav li.wordBoard').click(function(){
		$('.mainContainer .bbs').show().siblings().hide();
	});

	//获取系统时间函数
	function getSTime(){
		var data=new Date(),
		    nowData='';
		nowData+=data.getFullYear()+'-';
		nowData+=data.getMonth()+1+'-';
		nowData+=data.getDate()+' ';
		nowData+=data.getHours()+':';
		nowData+=data.getMinutes();

		return nowData;
	}


	function appendReply(text,time){
		var listMsgBoxDom='<dl class="Tw-comment">'+
							'<dt>'+
								'<a href="#">'+
									'<img src="upload/forum-detail-left-img.jpg">'+
								'</a>'+
							'</dt>'+
							'<dd>'+
								'<a>alsanbro</a>'+
								'回复'+
								'<a>alsanbro</a>'+
								':'+text+
								'<span class="Tw-time"> '+time+'</span>'+
								'<div class="Tw-comment-info">'+
									'<a class="reply">回复</a>'+
									'<a class="del">删除</a>'+
								'</div>'+
								'<div class="Tw-expand Tw-repeatl">'+
									'<div class="Tw-arrow"></div>'+
									'<div class="F-comment">'+
										'<textarea class="textArea2"></textarea>'+
										'<div class="releaseInfo">留言成功</div>'+
										'<p class="Tw-btn-op">'+
											'<a>回复(<span class="lettercount">140</span>)</a>'+
										'</p>'+
									'</div>'+
								'</div>'+
							'</dd>'+
						'</dl>';
		$('.Tw-commentlist').append(listMsgBoxDom);
	};

	function appendComment(text,time){
		var listMsgBoxDom='<div class="Tw-feed-list">'+
							'<div class="Tw-feed">'+
								'<div class="Tw-feed-face">'+
									'<a href="#">'+
										'<img src="upload/forum-detail-left-img.jpg">'+
									'</a>'+
								'</div>'+
								'<div class="Tw-feed-detail">'+
									'<div class="Tw-perinfo">'+
										'<a class="Tw-name" href="#">alsanbro</a>'+
									'</div>'+
									'<div class="Tw-text">'+text+'</div>'+
									'<div class="Tw-func">'+
										'<div class="Tw-time">'+'<span class="glyphicon glyphicon-time"></span>'+ time+'</div>'+
										'<div class="Tw-handle">'+
											'<a class="feed-delete">删除</a>'+
											'<a class="feed-comment">评论(0)</a>'+
										'</div>'+
									'</div>'+
									'<div class="Tw-expand">'+
										'<div class="Tw-arrow"></div>'+
										'<div class="F-comment">'+
											'<textarea class="textArea2"></textarea>'+
											'<p class="Tw-btn-op">'+
												'<a>评论(<span class="lettercount">140</span>)</a>'+
											'</p>'+
											'<div class="Tw-commentlist">'+

											'</div>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</div>'+
						'</div>';
		$('.listMsgBox').append(listMsgBoxDom);
	};
	
	$(".textArea textarea").keyup(function(){
		$(this).parents(".bbs").find(".lettercount").text(300 - parseInt($(this).val().length));
	});
	
	$(document).on("keyup",".textArea2",function(){
		console.log($(this).val().length);
		$(this).parent().find(".lettercount").text(140 - parseInt($(this).val().length));
	});
})

