<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>		
<div id="content">
	<h2>공지사항</h2>
	<h3 class="hidden">방문페이지위치</h3>
	<ul id="breadscrumb" class="block_hlist">
		<li>HOME</li>
		<li>고객센터</li>
		<li>공지사항수정</li>
	</ul>
	<form action="" method="post">	  
		<div id="notice-article-detail" class="article-detail margin-large">
			<dl class="article-detail-row">
				<dt class="article-detail-title">사원번호</dt>
				<dd class="article-detail-data">
					&nbsp;<input type="text" name="empno" value="${empDTO.empno}" readonly="readonly"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원이름</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="ename" value="${empDTO.ename}"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">부서번호</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="deptno" value="${empDTO.deptno}" readonly="readonly"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원직종</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="job" value="${empDTO.job}"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원상사</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="mgr" value="${empDTO.mgr}" readonly="readonly"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">고용일</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="hiredate" value="${empDTO.hiredate}" readonly="readonly"/>
				</dd>
			</dl> 
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원급여</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="sal" value="${empDTO.sal}"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원수당</dt>
				<dd class="article-detail-data half-data">
				&nbsp;<input type="text" name="comm" value="${empDTO.comm}" readonly="readonly"/>
				</dd>
			</dl>		
		</div>
		<p class="article-comment margin-small">
			<!-- <a class="btn-save button" href="EditProc.jsp">수정</a>  -->
			<input type="submit" value="수정" class="btn-save button" /> 
			 <a class="btn-cancel button" href="empDetail.htm?empno=${empDTO.empno}">취소</a>
		</p>
	</form>
</div>
</body>
</html>
