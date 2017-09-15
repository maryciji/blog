$(function(){
	var eles = {
		    form : $('#upForm'),
		    umail : $('[name="username"]'),
		    upwd : $('[name="password"]'),
		    urepwd : $('[name="urepwd"]'),
		    usex : $('[name="usex"]'),
		    uhob : $('[name="uhob"]'),
		    ucolor : $('[name="ucolor"]'),
		    submit : $('#submit'),
		    err1 : $('#err1'),
		    err2 : $('#err2'),
		    err3 : $('#err3'),
		    err4 : $('#err4'),
		    err5 : $('#err5'),
		    err6 : $('#err6'),
		    errTxt1 : '账号错误！',
		    errTxt2 : '密码错误！',
		    errTxt3 : '两此输入的密码不一致！',
		    errTxt4 : '必须选择性别！',
		    errTxt5 : '请选择爱好2-4项！',
		    errTxt6 : '请选择喜欢的颜色！',
		    norm_mail : /^([a-zA-Z0-9]+[-_.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[-_.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,6}$/,
		    /*norm_pwd : /^(?![a-zA-Z]+$)(?![A-Z0-9]+$)(?![A-Z\W_]+$)(?![a-z0-9]+$)(?![a-z\W_]+$)(?![0-9\W_]+$)[a-zA-Z0-9\W_]{8,18}$/,*/
		    norm_pwd : /^[a-z0-9A-Z]{8,16}$/,
		    norm_sex : 1,
		    norm_hob : '[2,4]',
		    norm_color : /\S+/
		};
	//用户名校验
	eles.umail.on('change',function(){
	    eles.umail.validator( eles.norm_mail, eles.err1, eles.errTxt1 );
	});
	//密码校验
	eles.upwd.on('change',function(){
	    eles.upwd.validator( eles.norm_pwd, eles.err2, eles.errTxt2 );
	});
})
function login() {
	     console.info("点击了登录");
	    var userName = $("#username").val();
	     console.info(userName)
	    var userPass = $("#password").val();
	     console.info(userPass);
	    if (userName == "" || userName == null) {
	        alert("用户名不能为空");
	        return false;
	    } else if (userPass == "" || userPass == null) {
	        alert("密码不能为空");
	        return false;
	    } else {
	        return true;
	    }
	}
