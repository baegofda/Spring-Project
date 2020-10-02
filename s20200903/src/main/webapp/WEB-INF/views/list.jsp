<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if('${msg}' != "") {
		alert("aaaa");
	}
</script>

</head><body>
<c:set var="num" value="${pg.total-pg.start+1}"></c:set>


<table>
	<tr><th>번호</th><th >닉네임</th><th>아이디</th><th>비밀번호</th><th>주소</th><th>상세주소</th>
		<th>등급</th><th>가입일자</th><th>당도</th><th>메일동의</th><th>문자동의</th></tr>
	<c:forEach var="TB" items="${list }">
		<tr>
			<td>${num}</td>
			<td><a href="detail.do?${TB.mNick}">${TB.mNick }</a></td>
			<td>${TB.mId}</td>
			<td>${TB.mPw}</td>
			<td>${TB.mAddr }</td>
			<td>${TB.mAddr2 }</td>
			<td>${TB.mLevel }</td>
			<td>${TB.mDate }</td>
			<td>${TB.mSweet }</td>
			<td>${TB.mMail }</td>
			<td>${TB.mSms }</td>			
		</tr>
		<c:set var="num" value="${num - 1}"></c:set>
	</c:forEach>
</table>
<c:if test="${pg.startPage > pg.pageBlock }">
	<a href="list.do?currentPage=${pg.startPage-pg.pageBlock}">[이전]</a>
</c:if>
<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
	<a href="list.do?currentPage=${i}">[${i}]</a>
</c:forEach>
<c:if test="${pg.endPage < pg.totalPage }">
	<a href="list.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
</c:if>
<input type="button" value="회원가입" onclick="location.href='joinForm.do'">
</body></html>