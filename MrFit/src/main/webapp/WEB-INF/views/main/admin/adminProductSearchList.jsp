<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function updateConfirm(){
		return confirm('해당 상품을 수정하시겠습니까?');
	}
	function deleteConfirm(){
		return confirm('해당 상품을 삭제하시겠습니까?');
	}
</script>
<!--start-ckeckout-->
<div class="ckeckout">
	<div class="container">
	
		<form action="${pageContext.request.contextPath}/admin/FindProductByName.do">
			<input type="text" class="searchInput" name="keyword" placeholder="상품검색">
			<input type="submit" value="검색">
		</form>
		<a href="${pageContext.request.contextPath}/admin/registerProductForm.do" type="button" class="btn btn-default">상품등록</a> &nbsp; 
	
		<div class="ckeckout-top">
			<div class=" cart-items heading">
				<h3>상품목록</h3>
				<div class="in-check">
					<ul class="unit">
						<li><span>사진</span></li>
						<li><span>상품명</span></li>
						<li><span>내용</span></li>
						<li><span>분류</span></li>
						<div class="clearfix"></div>
					</ul>
					
					<c:forEach items="${lvo.list }" var="item">
						<ul class="cart-header">
							<li>
								<span>
									<img alt="${item.name} 사진" src="${pageContext.request.contextPath}/thumb/${item.name}.jpg">
								</span>
							</li>
							<li>
								<span>${item.name}</span>
							</li>
								<li>
								<span>${item.content}</span>
							</li>
								<li>
								<span>${item.category}</span>
							</li>
							<li>
								<span>
									<a href="${pageContext.request.contextPath}/admin/updateProductForm.do?pno=${item.pno}" onclick="updateConfirm()"type="button" class="btn btn-default">수정</a>
									&nbsp;<a href="${pageContext.request.contextPath}/admin/deleteProduct.do?pno=${item.pno}" onclick="deleteConfirm()"type="button" class="btn btn-default">삭제</a>
								</span>
							</li>
						
							<div class="clearfix"></div>
						</ul>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end-ckeckout-->






<!--end-shoes-->
<!-- pagingBean -->
<div class="pagingInfo" align="center">
	<ul class="pagination">
		<c:if test="${pb.previousPageGroup}">	
			<li><a href="${pageContext.request.contextPath}/adminFindProductByName.do?pageNo=${pb.startPageOfPageGroup-1}">&laquo;</a></li>
		</c:if>
	<c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
		<c:choose>
			<c:when test="${pb.nowPage!=i}">
				<li><a href="${pageContext.request.contextPath}/adminFindProductByName.do?pageNo=${i}">${i}</a></li> 
			</c:when>
			<c:otherwise>
				<li class="active"><a href="#" >${i}</a></li>
			</c:otherwise>
		</c:choose>
		&nbsp;
	</c:forEach>
	<c:if test="${pb.nextPageGroup}">	
		<li>
			<a href="${pageContext.request.contextPath}/adminFindProductByName.do?pageNo=${pb.endPageOfPageGroup+1}">&raquo;</a>
		</li>
	</c:if>
	</ul>	 		
</div>