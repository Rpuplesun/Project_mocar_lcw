<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<meta charset="UTF-8">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"  -->
<!-- integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900|Roboto:400,500,700,900&display=swap"
      rel="stylesheet" />
<link rel="stylesheet" href="/css/style2.css">

<!-- header -->
<%@ include file="/mocar/header.jsp" %>

<c:set var="carinfoList" value="${requestScope.carinfoList }"/>
<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
<c:set var="nowpage" value="${requestScope.nowPage }"/>
<c:set var="totalPage" value="${requestScope.totalPage }"/>
<c:set var="startPage" value="${requestScope.startPage }"/>
<c:set var="endPage" value="${requestScope.endPage }"/>

<div class="col">
  <section class="text-center container rentmain">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">렌트예약</h1>
        <p class="lead text-muted">원하시는 차량을 선택 후 예약신청 버튼을 클릭해 주세요.</p>
 
		 <!-- 차량 카테고리 시작 -->
        <p>
          <a href="${pageContext.request.contextPath}/CarinfoList.mc" class="btn btn-secondary my-3">전체</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=1" class="btn btn-secondary my-3">전기</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=2" class="btn btn-secondary my-3">경형</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=3" class="btn btn-secondary my-3">준중형/중형</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=4" class="btn btn-secondary my-3">대형/SUV</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=5" class="btn btn-secondary my-3">수입/승합RV</a>
        </p>
        <!-- 차량 카테고리 종료 -->
        
      </div>
    </div>
  </section>

  <div class="album container carlist">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      <!-- 차량정보 div 반복 시작 -->
      		<c:forEach var="carinfo" items="${carinfoList }">
		        <div class="col">
		          <div class="card shadow-sm"> 
		            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" style="padding:10px; border-bottom: 1px solid #55595c; xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
		            <title>${carinfo.carname }</title><image href="${pageContext.request.contextPath}/img/car/${carinfo.carphoto}" height="100%" width="100%"/>
		            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
		
		            <div class="card-body">
		              <p class="card-text fw-bold fs-5" style="margin-bottom:0;">${carinfo.carname }</p>
		              <p class="car_name" style="margin-top:0; margin-bottom:0;">${carinfo.carname } . ${carinfo.carname_sub }</p>
		              <p class="car_year" style="margin-top:0; margin-bottom:0;">${carinfo.caryear }</p>
		              <p class="car_price text-end fs-4 fw-bold" style="margin-top:0;">${carinfo.carprice }원 / 일 <span class="car_price_sub">보험료 미포함</span> </p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                   <a href="${pageContext.request.contextPath }/CarinfoList/CarRentview.mc?carnum=${carinfo.carnum}" class="ls-modal btn btn-sm btn-outline-secondary" 
		                    >예약신청</a>

		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </c:forEach> 
		<!-- 차량정보 div 반복 종료 -->
		
      </div>
    </div>
    
    <!-- 페이징 시작 -->
		 <nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
		    
			    <c:if test="${nowPage > 1 }">
			    	<a class="page-link" href="${pageContext.request.contextPath }/CarinfoList.mc?page=${nowPage-1}" aria-label="Previous">
		        	<span aria-hidden="true">&laquo;</span>
		      		</a>
			    </c:if>
			    
		    </li>
		    
		    <c:forEach var="i" begin="${startPage }" end="${endPage }">
		    	<c:choose>
		    		<c:when test="${i == nowPage }"> 
		    			<li class="page-item page-link car-page">${i }</li>
		    		</c:when>
		    		<c:otherwise>  
		    			<li class="page-item"><a class="page-link car-page" href="${pageContext.request.contextPath }/CarinfoList.mc?page=${i}">${i }</a></li>
		    		</c:otherwise>
		    	</c:choose>
		    </c:forEach>
		    
			    <li class="page-item">
			    
			    <c:if test="${nowPage < totalPage }">
			    	<a class="page-link" href="${pageContext.request.contextPath }/CarinfoList.mc?page=${nowPage+1}" aria-label="Next">
		       		<span aria-hidden="true">&raquo;</span>
		      		</a>
			   	</c:if>
			   	
		    </li>
		  </ul>
		</nav>
	<!-- 페이징 종료 -->
		
  </div>
</div>


<!-- footer -->
<%@ include file="mocar/footer.jsp" %>




