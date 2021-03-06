<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">	
	function changeStatus(ono){
		alert(1);
		if(confirm(ono+" 를 상태변경하시겠습니까?")==true){
			alert("주문번호 : " + ono);
			location.href="${pageContext.request.contextPath}/updateOrderStatus.do?ono="+ono;
		}
	}
</script>
<div class="ckeckout">
	<div class="container">
		<div class="ckeckout-top">
			<div class=" cart-items heading">
				<h3>주문 관리</h3>
				<%-- 주문 검색 --%>
				<div align="right">
					<a href="${pageContext.request.contextPath}/adminAllOrderList.do">전체 주문 보기</a> &nbsp;
						<form action="${pageContext.request.contextPath}/adminSearchOrder.do">
						<select name="searchType" class="searchInput">
							<option value="memberId">회원아이디</option>
							<option value="orderNo">주문번호</option>
						</select>
						<input type="text" class="searchInput" name="searchKeyword">
						<input type="submit" value="검색">
					</form>
				</div>
				
				<%-- 주문 내역 리스트 --%>
				<table class="table-board">
						<thead>
							<tr class="success">
								<th class="title">주문번호</th>
								<th>주문자ID</th>
								<th>주문자명</th>
								<th>주문시각</th>
								<th>주문상태</th>
							</tr>
						</thead>
						
						<c:choose>
							<c:when test="${searchType == 'memberId'}"> <!-- 검색 타입이 회원 아이디일 경우 -->
								<c:forEach var="order" items="${lvo.list}" varStatus="i">	
									<tbody>						
										<tr>
										    <td><a href="${pageContext.request.contextPath}/orderProductInfo.do?ono=${order.ono}">${order.ono}</a></td>				
											<td>${order.memberVO.id} / ${order.memberVO.name }</td>
											<c:forEach items="${order.orderProductList}" var="product">
												<td>${product.name}</td>
												<td>${product.category} </td>
												<td>${product.color_name}</td>
												<td>${product.size_name}</td>
											</c:forEach>
											<td>${order.ordertime}</td>
											<td>
											<c:choose>
												<c:when test="${order.status =='배송완료'}">
													${order.status}
												</c:when>
												<c:otherwise>
												 	<button onclick="changeStatus(${order.ono})">${order.status}</button>
												</c:otherwise>
											</c:choose>
											</td>
										</tr>	
									</tbody>					
								</c:forEach>
							</c:when>
							<c:otherwise> <!--  검색 타입이 주문 번호일 경우 -->
								<c:set value="${orderVO}" var="order"></c:set>
								<tr>
								    <td><a href="${pageContext.request.contextPath}/orderProductInfo.do?ono=${order.ono}">${order.ono}</a></td>	
								    <td>${order.memberVO.id}</td>	
									<td>${order.memberVO.name}</td>
									<td>${order.ordertime}</td>
									<td>
										<c:choose>
											<c:when test="${order.status =='배송완료'}">
												${order.status}
											</c:when>
											<c:otherwise>
											 	<button onclick="changeStatus(${order.ono})">${order.status}</button>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					
				<%-- 페이징 처리 --%>
				<c:if test="${searchType == 'memberId'}">
					<c:set value="${lvo.pagingBean}" var="pb" />
					<div class="container" align="center">
						<ul class="pager">
							<c:if test="${pb.previousPageGroup==true}">
								<li><a
									href="adminSearchOrderList.do?pageNo=${pb.startPageOfPageGroup-1}">Previous</a></li>
							</c:if>
							<c:forEach begin="${pb.startPageOfPageGroup}"
								end="${pb.endPageOfPageGroup}" var="pageNum">
								<c:choose>
									<c:when test="${pageNum==pb.nowPage}">
										<li>${pageNum}&nbsp;&nbsp;</li>
									</c:when>
									<c:otherwise>
										<li><a href="adminSearchOrderList.do?&pageNo=${pageNum}">${pageNum}</a>&nbsp;&nbsp;</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pb.nextPageGroup==true}">
								<li><a
									href="adminSearchOrderList.do?pageNo=${pb.endPageOfPageGroup+1}">Next</a></li>
							</c:if>
						</ul>
					</div>
				</c:if>
				</div>
			</div>
		</div>
	</div>
			