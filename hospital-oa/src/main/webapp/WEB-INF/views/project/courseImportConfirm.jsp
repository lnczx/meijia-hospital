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
			<form class="importConfirmForm" method="post" action="/hospital-oa/project/course/course-import-do" enctype="multipart/form-data">
			<input type="hidden" name ="pId" id ="pId" value="${pId }"/>
			<input type="hidden" name="newFileName" value="${newFileName}"/>
			<input type="hidden" name="totals" value="${totals}"/>
			<input type="hidden" name="totalNews" value="${totalNews}"/>
			<input type="hidden" name="totalUpdate" value="${totalUpdate}"/>
			<h3><font color="red">确认以下导入信息无误后,请点击“保存”按钮</font></h3>
			<ol>
				<li>本次Excel导入文件中包含<font color="red">${totals}</font>条课程信息，其中新增<font color="red">${totalNews}</font>条课程, 其余<font color="red">${totalUpdate}</font>条课程在本项目中重复。</li>
				<li>
					<button type="submit" class="btn btn-primary" >
						
						保存
					</button>
					
					<a href="/hospital-oa/project/course/course-import?pId=${pId }" class="btn btn-success">重新导入</a>
				</li>
			</ol>
			</form>
		</div>
		<c:if test="${tableDatas != ''}">
			<div class="mt-20">
				<table id="error-table" class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="40">Excel中行数</th>
							<th width="30">日期</th>
							<th width="50">开始时间</th>
							<th width="50">结束时间</th>
							<th width="80">内容</th>
							<th width="50">教师</th>
							<th width="60">职称</th>
							<th width="30">单位</th>
							<th width="30">类型</th>
							<!-- <th width="30">学分</th> -->
							<th width="30">状态</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${tableDatas}" var="item">
						<tr>
							<td>${item[8]}</td>
							<td>${item[0]}</td>
							<td>${item[1]}</td>
							<td>${item[2]}</td>
							<td>${item[3]}</td>
							<td>${item[4]}</td>
							<td>${item[5]}</td>
							<td>${item[6]}</td>
							<td>${item[7]}</td>
							<td>${item[9]}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
	</div>
	<!-- js placed at the end of the document so the pages load faster -->
	<!--common script for all pages-->
	<%@ include file="../shared/importJs.jsp"%>
	<!--script for this page-->
	<script type="text/javascript" src="<c:url value='/lib/datatables/1.10.0/jquery.dataTables.min.js'/>"></script>
</body>
</html>