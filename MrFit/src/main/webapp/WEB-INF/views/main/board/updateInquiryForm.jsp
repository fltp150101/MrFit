<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!--start-ckeckout-->
<div class="ckeckout">
	<div class="container">
		<div class="ckeckout-top">
			<div class=" cart-items heading">
				<h3>공지사항 수정</h3><br>
				<div class="col-md-6 contact-left"> 
				<form action="${pageContext.request.contextPath}/updateInquiry.do">
				<input type="hidden" name="iqno" value="${ivo.iqno}">
				제목 <input type="text" id="title" name="title" value="${ivo.title}">
				내용<br>
				<textarea rows="20" cols="90" id="content" name="content">
				${ivo.content}
				</textarea>	<br>
				<input type="submit" value="수정">
					</form>			
				</div>	
			
				</div>
			</div>
		</div>
	</div>
	
<!--end-ckeckout-->