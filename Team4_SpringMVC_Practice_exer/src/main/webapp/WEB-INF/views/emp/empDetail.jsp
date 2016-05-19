<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<div id="content">
   <h2>EMP_List</h2>
   <h3 class="hidden">방문페이지위치</h3>
   <ul id="breadscrumb" class="block_hlist">
      <li id="home"><a href="">HOME</a></li>
          <li>HOME</li>
	      <li>사원테이블관리</li>
	      <li>사원상세보기</li>
   </ul>

   <div id="notice-article-detail" class="article-detail margin-large">
         <dl class="article-detail-row">
            <dt class="article-detail-title">사원번호</dt>
            <dd class="article-detail-data">${empDTO.empno}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">사원이름</dt>
            <dd class="article-detail-data half-data">${empDTO.ename}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">부서번호</dt>
            <dd class="article-detail-data half-data">${empDTO.deptno}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">사원직종</dt>
            <dd class="article-detail-data half-data">${empDTO.job}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">사원상사</dt>
            <dd class="article-detail-data half-data">${empDTO.mgr}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">고용일</dt>
            <dd class="article-detail-data half-data">${empDTO.hiredate}</dd>
         </dl>
         <dl class="article-detail-row half-row">
            <dt class="article-detail-title">사원급여</dt>
            <dd class="article-detail-data half-data">${empDTO.sal}</dd>
         </dl>
         <dl class="article-detail-row row">
            <dt class="article-detail-title">사원수당</dt>
            <dd class="article-detail-data half-data">${empDTO.comm}</dd>
         </dl>      
      </div>
   <p class="article-comment margin-small">
      <a class="btn-list button" href="empList.htm"></a> <a
         class="btn-edit button" href="empEdit.htm?empno=${empDTO.empno}"></a>
      <a class="btn-del button" href="empDel.htm?empno=${empDTO.empno}"></a>
   </p>
</div>
