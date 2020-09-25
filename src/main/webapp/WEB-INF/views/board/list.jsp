<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Board Tables</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Board List Page</h6>
			<button id="regBtn" type="button" class="btn btn-xs float-right">Register New Board</button>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
					
					<c:forEach items="${list }" var="board">
						<tr>
							<td><c:out value="${board.bno }" /></td>
							<td><a href='/board/get?bno=<c:out value="${board.bno }"/>'><c:out value="${board.title }" /></a></td>
							<td><c:out value="${board.writer }" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate }" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

<!-- Modal 추가 -->
<div class="modal free" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">처리가 완료되었습니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script type="text/javascript">
	$(document).ready(function() {
		
		var result = '<c:out value="${result}" />';
		
		checkModal(result);
		
		function checkModal(result) {
			if (result === '' || history.state) {
				return;
			}
			$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			
			$("#myModal").modal("show");
			
			// 상태(모달 창 띄울 필요 없음 상태) 하나 생성
			history.replaceState({}, null, null);
		}
		
		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});
		
	});
</script>

<%@ include file="../includes/footer.jsp"%>
