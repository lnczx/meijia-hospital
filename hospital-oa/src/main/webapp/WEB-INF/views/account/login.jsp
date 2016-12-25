<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../shared/taglib.jsp"%>
<html>
<head>
<!--common css for all pages-->
<%@ include file="../shared/importCss.jsp"%>
<link rel="stylesheet" href="<c:url value='/static/h-ui.admin/css/H-ui.login.css'/>" />
</head>
<body>
	<input type="hidden" id="TenantId" name="TenantId" value="" />
	<div class="header"></div>
	<div class="loginWraper">
		<div id="loginform" class="loginBox">
			<form:form modelAttribute="contentModel" class="form form-horizontal" method="POST">
				<div class="row cl">
					<label class="form-label col-xs-3">
						<i class="Hui-iconfont">&#xe60d;</i>
					</label>
					<div class="formControls col-xs-8">
						 <form:input path="username" class="input-text size-L" autocomplete="off" placeholder="用户名"/>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3">
						<i class="Hui-iconfont">&#xe60e;</i>
					</label>
					<div class="formControls col-xs-8">
						<form:password path="password" class="input-text size-" autocomplete="off" placeholder="密码"/>
					</div>
				</div>
				<!-- <div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<input class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}"
							onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width: 150px;">
						<img src="images/VerifyCode.aspx.png">
						<a id="kanbuq" href="javascript:;">看不清，换一张</a>
					</div>
				</div> -->
<!-- 				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<label for="online">
							<input type="checkbox" name="online" id="online" value="">
							使我保持登录状态
						</label>
					</div>
				</div> -->
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
						<input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<%@ include file="../shared/pageFooter.jsp"%>
	
	<!-- js placed at the end of the document so the pages load faster -->
	<!--common script for all pages-->
	<%@ include file="../shared/importJs.jsp"%>
	<script src="<c:url value='/lib/jquery.validation/1.14.0/jquery.validate.min.js'/>" type="text/javascript"></script>
	<script src="<c:url value='/static/app/js/login.js'/>" type="text/javascript"></script>
	
	
</body>
</html>