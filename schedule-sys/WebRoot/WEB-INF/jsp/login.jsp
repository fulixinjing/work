<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel='icon' href="${ctx}/images/ico.png" type=‘image/x-ico’ />
<title>日程安排系统</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/static/base-global.css"  media="screen" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/static/common.css"  media="screen" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/static/main.css"  media="screen" />
<script type="text/javascript" src="${ctx}/js/static/jquery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/static/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="${ctx}/js/util/common.js"></script>
</head>  

<body style="overflow-y: auto;">

<div class="header" style="background:#fff;">
    	<div class="box fn-clear" style="width:1440px;">
    		<span><img src="${ctx}/css/images/logo_21.png" width="199" height="56"></span>
    		
    	</div>
    </div>

    <div class="login-box">
    	<div class="login-img">
        <div class="wd760">
          <div class="sr-box fr mg-t65">
            <h2>用户登录：</h2>
            ${message}
            <form action="${ctx}/login" method="post" id="form1">
            <ul class="mg-l29">
              <li class="fn-clear mg-t35">
                <input id="username" name="username" type="text" placeholder="用户名" value="${login.username}" onclick="focusMeByAll(this,'');" onblur="blurMeByAll(this,''),validateXml1(this);" maxlength="35" class="fl srk">
              </li>
              <li class="fn-clear mg-t35">
               <input id="password" name="password" type="password" placeholder="密   码" value="" onclick="focusMeByAll(this,'');" onblur="blurMeByAll(this,''),validateXml1(this);" maxlength="35" class="fl srk1">
              </li>
              <li class="fn-clear mg-t35" style="border:none;">
                <span class="fl cgray1"><input name="ck_auto" id="ck_auto" type="checkbox" value="1" onclick="SaveAuto()"  class="vt-t">&nbsp;自动登录</span>
                <span class="fl cgray1 mg-l20"><input name="ck_rmbUser2" id="ck_rmbUser2" onclick="Save()"  type="checkbox" value="" class="vt-t">&nbsp;记住密码</span>
                <input name="ck_rmbUser" id="ck_rmbUser"  value=""  type="hidden" class="vt-t">
              </li>
            </ul>
            <div class="txt-c mg-t15">
             <!--  <a href="javascript:formSubmit();" class="login-btn">登&nbsp;&nbsp;录</a> -->
             <input class="login-button" type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录" />
             
            </div>
            </form>
          </div>
        </div>
    		
    	</div>
    </div>
    <div class="txt-c cgray3" style="margin-top: 15px;">Copyright&nbsp;©&nbsp;2018&nbsp;SR&nbsp;All&nbsp;Rights&nbsp;Reserved&nbsp;</div>

</body>
</html>

<script  type="text/javascript">

		//选中“自动登录”的同时选中”记住密码“
		$("#ck_auto").click(function(){
		    if($(this).attr('checked')){
		         $("#ck_rmbUser2").attr('checked',true);
		         $("#ck_rmbUser2").attr('disabled',true);
		         $("#ck_rmbUser").val("1");
		         
		    }else{
		    	//$("#ck_rmbUser").attr('checked',false);
		    	$("#ck_rmbUser2").attr('disabled',false);
		    	$("#ck_rmbUser").val("1");
		   }
		});
		$("#ck_rmbUser2").click(function(){
		  if($(this).attr('checked')){
		         $("#ck_rmbUser").val("1");
		    }else{
		    	$("#ck_rmbUser").val("");
		   }
		});
    //重设垂直居中 
    window.onload = resize()
    function resize(){  
      window.onload = fVericalAlignBody()
       if(!window.onresize){  
       window.onresize =  fVericalAlignBody;  
       }else{  
        var old = window.onresize  
        onresize = function (){  
         fVericalAlignBody();  
         old();  
       }  
     }  
    }
    
    function  fVericalAlignBody(){  
      var nBodyHeight = 710;
      var nClientHeight = document.documentElement.clientHeight;
      if(nClientHeight >= nBodyHeight){
        var nDis = (nClientHeight - nBodyHeight)/2;
        document.body.style.paddingTop = nDis + 'px';
      }else{
        document.body.style.paddingTop = '0px';
      }
    }   
    
  // 输入框内容点击变色
  function focusMeByAll(which,defalutWord){
      var val = $(which).val();
      $(which).css("color",'#666');
      if(val==defalutWord)
        $(which).val("");
    }

    function blurMeByAll(which,defalutWord){
      var val = $(which).val().replace(/(^\s*)|(\s*$)/g, "");
        if(val==""){
        $(which).val(defalutWord);
        $(which).css("color",'#ccc');
        }
    }
    
 	$(document).ready(function () {
			
	});

	function formSubmit() {

		form1.submit();
	}
	function Save() {
	}
	function SaveAuto() {
	}
	
</script>