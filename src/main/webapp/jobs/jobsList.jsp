<%@page import="kr.or.ddit.jobs.model.JobsVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>Jsp</title>
<%@ include file="/layout/commonLib.jsp" %>
</head>

<body>
<%@ include file="/layout/header.jsp" %>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<%@ include file="/layout/left.jsp" %>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="row">
				<div class="col-sm-8 blog-main">
					<h2 class="sub-header">사용자</h2>
					<div class="table-responsive">
						<%List<JobsVo> jobsList = (List<JobsVo>) request.getAttribute("jobsList");%>
						<table class="table table-striped">
							<tr>
								<th>job_id</th>
								<th>job_title</th>
							</tr>
							<%
								for(int i=0; i<jobsList.size(); i++){
							%>
							<tr>
								<td><%=jobsList.get(i).getJob_id() %></td>
								<td><%=jobsList.get(i).getJob_title() %></td>
							</tr>
							<%		
								}
							%>
						</table>
					</div>
					<a class="btn btn-default pull-right">사용자 등록</a>
					
					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>