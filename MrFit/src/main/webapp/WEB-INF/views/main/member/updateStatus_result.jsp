<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>
<%--  <sec:authentication property="principal.name"/>님 회원정보수정되었습니다.  --%>
<sec:csrfInput/>
<script type="text/javascript">
	alert("회원탈퇴 되었습니다. ");	
	$("#logoutForm").submit();
	/* location.href="${pageContext.request.contextPath}/logout.do";	 */
</script>
<form action="${pageContext.request.contextPath}/logout.do"
									id="logoutForm" method="post" style="display: none;">
									<sec:csrfInput />
									</form>