$(function(){
	$(document).ready(function(){
            $("#user").focus(function(){
                var a=$("#user").val();
                $("#user").css
                if(!a){$(".user_label").text("请输入用户名(6~8个字符)").css({"color":"blue","fontSize":"14px"});}

            }).blur(function(){
                $("#user").css("background-color","#ccc");
                var b=$("#user").val(),c= parseInt(b.length);
                if(!b){$(".user_label").text("用户名不可以为空").css({"color":"red","fontSize":"14px"});}
                else if(c<6){
                        $(".user_label").text("用户名长度不可小于6位").css({"color":"red","fontSize":"14px"});
                    }
                else{
                    $(".user_label").text("该用户名可用").css({"color":"green","fontSize":"14px"});
                }
            });
            $("#password").focus(function(){
                var a=$("#password").val();
                $("#password").css("background-color","#FFF");
                if(!a){$(".password_label").text("请输入密码！").css({"color":"blue","fontSize":"14px"});}
            }).blur(function(){
                $("#password").css("background-color","#ccc");
                var b=$("#password").val(),c= parseInt(b.length);
                if(!b){$(".password_label").text("密码不可以为空").css({"color":"red","fontSize":"14px"});}
                else if(c<6){
                    $(".password_label").text("密码长度不可小于6位").css({"color":"red","fontSize":"14px"});
                }
                else{
                    $(".password_label").text("密码强度：低").css({"color":"green","fontSize":"14px"});
                }
            });
            $("#password_again").focus(function(){
                var a=$("#password_again").val();
                $("#password_again").css("background-color","#FFF");
                if(!a){$(".password2_label").text("请重新输入密码！").css({"color":"blue","fontSize":"14px"});}
            }).blur(function(){
                $("#password_again").css("background-color","#ccc");
                var b=$("#password_again").val(),d=$("#password").val();
                if(!b){$(".password2_label").text("密码不可以为空").css({"color":"red","fontSize":"14px"});}
                else if(b!=d){
                    $(".password2_label").text("请重新确认您的密码").css({"color":"red","fontSize":"14px"});
                }
                else{
                    $(".password2_label").text("ok").css({"color":"green","fontSize":"14px"});
                }
            });


        })
})