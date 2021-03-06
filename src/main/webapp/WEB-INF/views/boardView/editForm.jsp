<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>書き直し</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">

<script>
//글쓰기폼 확인
function formCheck() {
	var title = document.getElementById('title');
	var contents = document.getElementById('contents');
	
	if (title.value.length < 5) {
		alert("タイトルを入力してください");
		title.focus();
		title.select();
		return false;
	}
	if (contents.value.length < 5) {
		alert("内容を入力してください。.");
		contents.focus();
		contents.select();
		return false;
	}
	return true;
}
</script>	
</head>
<body>

<div class="container">
		<div class="row">
		
<form id="writeform" action="edit"  method="post" 
	enctype="multipart/form-data" onsubmit="return formCheck();">
		<input type="hidden" name="boardnum" value="${board.boardnum }">
			<table class="table table-striped" style="text-align; border 1px solid #dddddd;">
				<thead>
					<tr>
						<th colspan="2" style="background-color:#eeeeee; text-align:center;">board list</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="title" id="title" class="form-control" maxlength="50"value="${board.title}"></td>
					</tr>
					<tr>
						<td><textarea name="contents" id="contents" class="form-control"maxlength="2048" style="resize:none; height:350px;">${board.contents}</textarea></td>
					</tr>
				</tbody>
				
			</table>
			<input type="file" name="upload" size="30">
			${board.originalfile}
			<input type="submit" class="btn btn-primary pull-right" value="修正する">
			</form>
			
		</div>
	</div>
</body>
</html>
