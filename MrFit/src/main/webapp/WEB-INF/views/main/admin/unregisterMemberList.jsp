<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<c:set value="${lvo.pagingBean}" var="pb" />

<h3><a href="${pageContext.request.contextPath}/commonMemberList.do?status=1">리스트로 돌아가기</a><br><br></h3>

<table class="table-board">
		<thead>
		<tr class="success">
			<th class="title">id</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>email</th>
			<th>point</th>
			<th>누적구매금액</th>
			<th>등급</th>
			</tr>
		</thead>
		<tbody>						
				<c:forEach var="member" items="${lvo.list}">	
							
			<tr>
			    <td>${member.id}</td>				
				<td>${member.name}</td>
				<td>${member.phone}</td>
				<td>${member.address}</td>
				<td>${member.email}</td>
				<td>${member.point} </td>
				<td>${member.totalSpent}</td>
				<td>${member.gradeVO.grade}</td>
			</tr>	
			</c:forEach>	
		</tbody>					
	</table>

<div class="container" align="center">
  		<ul class="pager">
   			<c:if test="${pb.previousPageGroup==true}">
   			<li><a href="commonMemberList.do?status=0&listPage=${pb.startPageOfPageGroup-1}">Previous</a></li>
   			</c:if>
   			<c:forEach begin="${pb.startPageOfPageGroup}" 
   			end="${pb.endPageOfPageGroup}" var="pageNum">
   			<c:choose>
   				<c:when test="${pageNum==pb.nowPage}">
				<li>${pageNum}&nbsp;&nbsp;</li>
				</c:when>
				<c:otherwise>
				<li><a href="commonMemberList.do?status=0&listPage=${pageNum}">${pageNum}</a>&nbsp;&nbsp;</li>
				</c:otherwise>
   			</c:choose>
   			</c:forEach>
   			<c:if test="${pb.nextPageGroup==true}">
    		<li><a href="commonMemberList.do?status=0&listPage=${pb.endPageOfPageGroup+1}">Next</a></li>
    		</c:if>
 		 </ul>
	</div>

















