<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<div id="content">
	<h2>공지사항</h2>
	<h3 class="hidden">방문페이지위치</h3>
	<ul id="breadscrumb" class="block_hlist">
		<li>HOME</li>
		<li>고객센터</li>
		<li>공지사항등록</li>
	</ul>
	<form action="" method="post">	
	<div id="notice-article-detail" class="article-detail margin-small">
		<dl class="article-detail-row">
				<dt class="article-detail-title">사원번호</dt>
				<dd class="article-detail-data">
					&nbsp;<input type="text" name="empno"/>
				</dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원이름</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="ename"/></dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">부서번호</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="deptno"/></dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원직종</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="job"/></dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원상사</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="mgr"/></dd>
			</dl>
			<!-- <dl class="article-detail-row half-row">
				<dt class="article-detail-title">고용일</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="hiredate"/></dd>
			</dl> -->
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원급여</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="sal"/></dd>
			</dl>
			<dl class="article-detail-row half-row">
				<dt class="article-detail-title">사원수당</dt>
				<dd class="article-detail-data half-data">
				<input type="text" name="comm"/></dd>
			</dl>		
		</div>

		</div> 
		<p class="article-comment margin-small">
			<input class="btn-save button" type="submit" value="저장" /> <a
				class="btn-cancel button" href="empList.htm"></a>
		</p>
	</form>
</div>

