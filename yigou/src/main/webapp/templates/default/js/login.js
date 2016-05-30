window.onload=function(){
	var username=document.getElementById('username');
	var password=document.getElementById('password');
	var msgUsername=document.getElementById('msgUsername');
	var msgPassword=document.getElementById('msgPassword');
	var tipMsg=document.getElementById('tipMsg');
	var login=document.getElementById('login');
	var x=0;
	var y=0;

		//当获得用户名输入框焦点时
	username.onfocus=function(){
		msgUsername.style.display="block";
		msgUsername.innerHTML="<span class='glyphicon glyphicon-edit'></span>请输入用户名！";
		msgUsername.style.color="#f68236";
	}
	//当失去用户名输入框焦点时
	username.onblur=function(){
		//含有非法字符
		var pattern=/[^\w\u4e00-\u9fa5]/g;
		if (pattern.test(this.value)) {
			msgUsername.innerHTML="<span class='glyphicon glyphicon-remove'></span>含有非法字符！";
			msgUsername.style.color="#F62626";
		}

		//不能为空
		else if (this.value=="") {
			msgUsername.innerHTML="<span class='glyphicon glyphicon-remove'></span>用户名不能为空！";
			msgUsername.style.color="#F62626";
		}
		//长度不能超过25个字符
		else if (getLength(this.value)>25) {
			msgUsername.innerHTML="<span class='glyphicon glyphicon-remove'></span>用户名长度不能超过25个字符！";
			msgUsername.style.color="#F62626";
		}
		//长度不能少于6个字符
		else if (getLength(this.value)<6) {
			msgUsername.innerHTML="<span class='glyphicon glyphicon-remove'></span>用户名长度不能少于6个字符！";
			msgUsername.style.color="#F62626";
		}
		//OK
		else{
			msgUsername.innerHTML="<span class='glyphicon glyphicon-ok'></span>OK!";
			msgUsername.style.color="green";
			x=1;
		}
	}

	//当获得密码框焦点时
	password.onfocus=function(){
		msgPassword.style.display="block";
		if (password.disabled=="true") {
			msgPassword.innerHTML="<span class='glyphicon glyphicon-remove'></span>请先输入正确的用户名！";
			msgPassword.style.color="#F62626";
		}else{
			msgPassword.innerHTML="<span class='glyphicon glyphicon-edit'></span>请输入密码！"
			msgPassword.style.color="#f68236";
		};
	}
	//当失去密码框焦点时
	password.onblur=function(){
		//不能为空
		if (this.value=="") {
			msgPassword.innerHTML="<span class='glyphicon glyphicon-remove'></span>密码不能为空！";
			msgPassword.style.color="#F62626";
		}else{
			msgPassword.innerHTML="<span class='glyphicon glyphicon-ok'></span>OK!";
			msgPassword.style.color="green";
			y=1;
		}

		//判断x和y
		if(x==0){
			tipMsg.style.display="block";
			tipMsg.innerHTML="<span class='glyphicon glyphicon-remove'></span>用户名输入不合法，请重新输入！";
			tipMsg.style.color="#F62626";
			username.focus();
			password.value="";
		}else if (y==0) {
			tipMsg.innerHTML="<span class='glyphicon glyphicon-remove'></span>密码不能为空，请重新输入！";
			tipMsg.style.color="#F62626";
			password.focus();
		}else{
			tipMsg.innerHTML="<span class='glyphicon glyphicon-ok'></span>OK！现在可以登录了！";
			tipMsg.style.color="green";
			login.removeAttribute('disabled');
		}
		
	}

	//当点击提交按钮时判断用户名输入是否符合要求且密码框是否为空，全部满足就提交表单，否则阻止提交
	function checksubmit(){
		if(x==0){
			tipMsg.style.display="block";
			tipMsg.innerHTML="<span class='glyphicon glyphicon-remove'></span>用户名输入不合法，请重新输入！";
			username.focus();
			return false;
		}else if (y==0) {
			tipMsg.innerHTML="<span class='glyphicon glyphicon-remove'></span>密码不能为空，请重新输入！";
			password.focus();
			return false;
		}else{
			return true;
		}
	}

	//获取输入框中输入内容的长度，中文为2个字符
	function getLength(str){
		//\x00-xff为1个字节
		return str.replace(/[^\x00-xff]/g,"xx").length;
	}

}

