

$(function(){
	
	var i=0;
	// var clone=$('.banner .img li').first().clone();
	// $('.banner .img').append(clone);
	var size=$('.banner .img li').size();
	var w=parseInt($('.banner .img li').css("width"));
	var h=$('.banner .img li').css("height");
	$('.banner').css('height',h);
	$(window).resize(function(){
		w=parseInt($('.banner .img li').css("width"));
		h=$('.banner .img li').css("height");
		$('.banner').css('height',h);

	})
	// for(var j=0;j<size-1;j++){
	// 	$('.banner .number').append('<li></li>');
	// };
	// $('.banner .number li').first().addClass('on');

	// // 鼠标滑入圆点
	// $('.banner .number li').hover(function(){
	// 	var index=$(this).index();
	// 	i=index;
	// 	$('.banner .img').stop().animate({left:-index*440},500);
	// 	$(this).addClass('on').siblings().removeClass('on');
	// })


	// // 自动轮播
	// var t=setInterval(function(){
	// 	i++;
	// 	move();
	// },2000);

	// // 对banner定时器的操作
	// $('.banner').hover(function(){
	// 	clearInterval(t);
	// },function(){
	// 	t=setInterval(function(){
	// 		i++;
	// 		move();
	// 	},2000);
	// });



	// 向左按钮
	$('.banner .bttn_l').click(function(){
		i++;
		move();
	})
	
	// 向右按钮
	$('.banner .bttn_r').click(function(){
		i--;
		move();
	});


	function move(){
		if(i==size){
			$('.banner .img').css({left:0});
			i=1;
		};
		// if(i==size-1){
		// 	$('.banner .number li').eq(0).addClass('on').siblings().removeClass('on');
		// }

		if(i==-1){
			$('.banner .img').css({left:-(size-1)*w});
			i=size-2;
		};
		$('.banner .img').stop().animate({left:-i*w},500);
	// 	$('.banner .number li').eq(i).addClass('on').siblings().removeClass('on');
	 };
	
})