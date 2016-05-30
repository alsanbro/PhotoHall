
$(function(){

    //作品集锦
    $('.imgList a').on('mouseenter',function(){
    	$(this).find('.caption').animate({height:"190px"}).show();
    });
        
    // $('.imgList .col img').mousemove(function(){
    //     $(this).parent().next().animate({height:"190px"});
    // });
    $('.imgList .caption').mouseleave(function(){
        $(this).animate({height:"0px"});
    });
    
    $(".header .nav li").each(function(){
        var href = $(this).children().attr("href");
        if(location.href==href)
            $(this).addClass("active");
    });

    
    
})   