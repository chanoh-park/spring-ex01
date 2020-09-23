<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="../includes/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="panel-header">Board Register</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<hr />

<div class="row">
	<div class="col-lg-12">
		<div class="panel card-default">
		
			<div class="panel-heading">Board Register</div>
			<!-- / .panel-heading -->
			
			<div class="panel-body">
				
				<div class="form-group">
					<label>Bno</label> <input class="form-control" name="bno" value='<c:out value="${board.bno }" />' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>Title</label> <input class="form-control" name="title" value='<c:out value="${board.title }" />' readonly="readonly">
				</div>
				
				<div class="form-group">
						<label>Text area</label>
						<textarea rows="3" class="form-control" name="content" readonly="readonly"><c:out value="${board.content }" /></textarea>
				</div>
				
				<div class="form-group">
					<label>Writer</label> <input class="form-control" name="writer" value='<c:out value="${board.writer }" />' readonly="readonly">
				</div>
				
				<button data-oper="modify" class="btn btn-default" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}" />'">Modify</button>
				<button data-oper="list" class="btn btn-info" onclick="location.href='/board/list'">List</button>
					
				</div>
			
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<%@ include file="../includes/footer.jsp" %>