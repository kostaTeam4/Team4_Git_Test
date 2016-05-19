<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="content">
		<h2>EMP_List</h2>
		<h3 class="hidden">방문페이지 로그</h3>
		<ul id="breadscrumb" class="block_hlist clear">
			<li>HOME</li>
			<li>고객센터</li>
			<li>공지사항목록</li>
		</ul>
		<h3 class="hidden">공지사항 목록</h3>
		<form id="content-searchform" class="article-search-form"
			action="empList.jsp" method="get">
			<fieldset>
				<legend class="hidden"> 목록 검색 폼 </legend>
				<input type="hidden" name="pg" value="" /> <label for="f"
					class="hidden">검색필드</label> <select name="f">
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
				</select> <label class="hidden" for="q">검색어</label> <input type="text"
					name="q" value="" /> <input type="submit" value="검색" />
			</fieldset>
		</form>
		<table class="article-list margin-small">
		<caption class="hidden">공지사항</caption>
		<thead>
			<tr>
				<th class="seq">사원번호</th>
				<th class="title">사원이름</th>	
				<th class="regdate">고용일</th>	
					
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="empDTO">
				<tr>
					<td class="seq">${empDTO.empno}</td>
					<td class="title"><a href="empDetail.htm?empno=${empDTO.empno}">${empDTO.ename}</a></td>
					<td class="regdate">${empDTO.hiredate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p class="article-comment margin-small">
		<a class="btn-write button" href="empReg.htm">사원등록</a>
	</p>
	<p id="cur-page" class="margin-small">
		<span class="strong">1</span> / 10 page
	</p>
	<div id="pager-wrapper" class="margin-small">
		<div class="pager clear">			
			<ul>
				
				<!-- 블록 범위 찍기 -->
				<c:forEach begin="${fromPage}" end="${toPage}" var="i">
					<c:if test="${i==pg}"><li>${i}</li></c:if>
					<c:if test="${i!=pg}">
						<li><a href="empList.htm?pg=${i}">${i}</a></li>
					</c:if>
				</c:forEach>
				
				
			</ul>
			
		</div>
	</div>
</div>

		
		
