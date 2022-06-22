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

<!-- datapicker 적용 -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<!-- datapicker 적용 -->

<%@ include file="/mocar/header.jsp" %>

<c:set var="carinfoList" value="${requestScope.carinfoList }"/>

<div class="col">
  <section class="text-center container rentmain">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">렌트예약</h1>
        <p class="lead text-muted">날짜와 차종을 선택 후 원하시는 차량을 선택해 주세요.</p>
        
        <!-- 달력폼 시작 -->
        <input type="text" id="demo" class="my-4 text-secondary" name="demo" value="" />
		 <!-- 달력폼 끝 -->
		 
        <p>
<!--           <a href="#" class="btn btn-primary my-4 calender" >Main call to action</a><br> -->
          <a href="${pageContext.request.contextPath}/CarinfoList.mc" class="btn btn-secondary my-3">전체</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=1" class="btn btn-secondary my-3">전기</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=2" class="btn btn-secondary my-3">경형</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=3" class="btn btn-secondary my-3">준중형/중형</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=4" class="btn btn-secondary my-3">대형/SUV</a>
          <a href="${pageContext.request.contextPath}/carinfoListFindToType.mc?cartype=5" class="btn btn-secondary my-3">수입/승합RV</a>
         
        </p>
      </div>
    </div>
  </section>

  <div class="album container carlist">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      <!-- 차량정보 div 반복 -->
      

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
		                  <button type="button" class="btn btn-sm btn-outline-secondary">차량사진보기</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">예약신청</button>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </c:forEach> 


       
       
       
      </div>
    </div>
    
		 <nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
			    <li class="page-item"><a class="page-link car-page" href="#">1</a></li>
			    <li class="page-item"><a class="page-link car-page" href="#">2</a></li>
			    <li class="page-item"><a class="page-link car-page" href="#">3</a></li>
			    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
  </div>
</div>

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"  -->
<!-- integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->

<script>

$(function () {
    $('#demo').daterangepicker({
        "locale": {
            "format": "YYYY-MM-DD",
            "separator": " ~ ",
            "applyLabel": "확인",
            "cancelLabel": "취소",
            "fromLabel": "From",
            "toLabel": "To",
            "customRangeLabel": "Custom",
            "weekLabel": "W",
            "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
            "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            "firstDay": 1
        },
        timePicker: true,
        timePicker24Hour: true,
        "drops": "down"
    }, function (start, end, label) {
        console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    });
});

</script>

<footer>
<%@ include file="mocar/footer.jsp" %>
</footer>



