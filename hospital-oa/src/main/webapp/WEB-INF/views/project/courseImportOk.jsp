<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../shared/taglib.jsp"%>
<html>
<head>
<!--common css for all pages-->
<%@ include file="../shared/importCss.jsp"%>
<!--css for this page-->
</head>
<body>
	<div class="page-container">
		<div class="Huialert Huialert-success radius">
			<h3>导入成功：</h3>
			<ol>
				<li>本地共导入<font color="red">${totals}</font>个课表，其中新增<font color="red">${totalNews}</font>个课表, 更新<font color="red">${totalUpdate}</font>个课表.</li>
				<li>
					<a href="/hospital-oa/project/course/course-list?pId=${pId }" class="btn btn-success">查看课表</a>
				</li>
			</ol>
			</form>
		</div>
	</div>
	<!-- js placed at the end of the document so the pages load faster -->
	<!--common script for all pages-->
	<%@ include file="../shared/importJs.jsp"%>
	<!--script for this page-->
</body>
</html>