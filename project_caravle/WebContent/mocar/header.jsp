<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>mocar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
.nav-link:hover {
	color: #fff;
	background-color: #0d6efd;
}
#slider { width:50%;}
#slideList > p { display:none;}
</style>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" integrity="sha256-p6xU9YulB7E2Ic62/PX+h59ayb3PBJ0WFTEQxq0EjHw=" crossorigin="anonymous" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
		<script>
			$(document).ready(function(){
				var imgList = $('#slideList p');

				$('#slider').slider({
					min:0,
					max:119,
					value:1,
					slide:function(event,ui){
						imgList.hide();
						imgList.eq(ui.value).show();
					}

				});
			});
		</script>

</head>
<body>


	<div class="row g-0 ">
		<div class="d-flex flex-column p-3 bg-light order-first col-md-3 col-lg-2">
			<a href="/mocar/index.jsp"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span class="fs-4">Logo</span>
			</a>
			<hr>
			<ul class=" nav nav-pills flex-column mb-auto" id="navbarToggler8">
				<li class="nav-item"><a href="${pageContext.request.contextPath}/CarinfoList.mc" class="nav-link link-dark"
					aria-current="page"> 렌트예약 </a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark">
						공지사항 </a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark">
						Q&amp;A </a></li>
				<li class="nav-item"><a href="/mocar/map.jsp"
					class="nav-link link-dark"> 찾아오시는 길 </a></li>
				<li class="nav-item"><a href="/mocar/contact.jsp"
					class="nav-link link-dark"> Contact </a></li>
			</ul>
			<hr>

			<a href="#"
				class="d-flex align-items-center link-dark text-decoration-none"
				id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
			</a>
			<button type="button" class="btn d-flex" data-bs-toggle="modal"
				data-bs-target="#login">
				<strong>login</strong>
			</button>

			<!-- Modal -->
			<div class="modal" id="login" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">login</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">아이디</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">비밀번호</label>
								</div>
								<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
									type="submit">로그인</button>
								<div id="opt" class="row">
									<div class="opt_left col">
										<a href="#" data-bs-toggle="modal" data-bs-target="#resist">회원가입</a>
									</div>
									<div class="opt_right col text-end ">
										<a id="find1" class="d-inline-block " href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignin">ID</a>
										<p class="d-inline-block">/</p>
										<a id="find2" class="d-inline-block" href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignpw">PW찾기</a>
									</div>
								</div>
								<hr class="my-4">
								<h2 class="fs-5 fw-bold mb-3">다른 방법으로 로그인하기</h2>
								<button
									class="w-100 py-2 mb-2 btn btn-outline-success rounded-4"
									type="button" onclick="location.href='https://nid.naver.com/'">
									<img src=img/naver.png style="width: 20px; height: 20px;">
									네이버로 로그인하기
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원가입 -->
			<div class="modal" id="resist" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">회원가입</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3 row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">아이디</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;'>중복확인</button>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">비밀번호</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">비밀번호 확인</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="name"> <label
										for="floatingInput">이름</label>
								</div>
								<div class="container px-1">
									<div class="row gx-5">
										<div class="col">
											<select class="form-select"
												aria-label="Default select example">
												<option selected>출생년도</option>
												<option value="1">1950년</option>
												<option value="2">1951년</option>
												<option value="3">1952년</option>
												<option value="4">1953년</option>
												<option value="5">1954년</option>
												<option value="6">1955년</option>
												<option value="7">1956년</option>
												<option value="8">1957년</option>
												<option value="9">1958년</option>
												<option value="10">1959년</option>
												<option value="11">1960년</option>
												<option value="12">1961년</option>
												<option value="13">1962년</option>
												<option value="14">1963년</option>
												<option value="15">1964년</option>
												<option value="16">1965년</option>
												<option value="17">1966년</option>
												<option value="18">1967년</option>
												<option value="19">1968년</option>
												<option value="20">1969년</option>
												<option value="21">1970년</option>
												<option value="22">1971년</option>
												<option value="23">1972년</option>
												<option value="24">1973년</option>
												<option value="25">1974년</option>
												<option value="26">1975년</option>
												<option value="27">1976년</option>
												<option value="28">1977년</option>
												<option value="29">1978년</option>
												<option value="30">1979년</option>
												<option value="31">1980년</option>
												<option value="32">1981년</option>
												<option value="33">1982년</option>
												<option value="34">1983년</option>
												<option value="35">1984년</option>
												<option value="36">1985년</option>
												<option value="37">1986년</option>
												<option value="38">1987년</option>
												<option value="39">1988년</option>
												<option value="40">1989년</option>
												<option value="41">1990년</option>
												<option value="42">1991년</option>
												<option value="43">1992년</option>
												<option value="44">1993년</option>
												<option value="45">1994년</option>
												<option value="46">1995년</option>
												<option value="47">1996년</option>
												<option value="48">1997년</option>
												<option value="49">1998년</option>
												<option value="50">1999년</option>
												<option value="51">2000년</option>
												<option value="52">2001년</option>
												<option value="53">2002년</option>
												<option value="54">2003년</option>
												<option value="55">2004년</option>
												<option value="56">2005년</option>
												<option value="57">2006년</option>
												<option value="58">2007년</option>
												<option value="59">2008년</option>
												<option value="60">2009년</option>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example">
												<option selected>월</option>
												<option value="1">1월</option>
												<option value="2">2월</option>
												<option value="3">3월</option>
												<option value="4">4월</option>
												<option value="5">5월</option>
												<option value="6">6월</option>
												<option value="7">7월</option>
												<option value="8">8월</option>
												<option value="9">9월</option>
												<option value="10">10월</option>
												<option value="11">11월</option>
												<option value="12">12월</option>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example">
												<option selected>일</option>
												<option value="1">1일</option>
												<option value="2">2일</option>
												<option value="3">3일</option>
												<option value="4">4일</option>
												<option value="5">5일</option>
												<option value="6">6일</option>
												<option value="7">7일</option>
												<option value="8">8일</option>
												<option value="9">9일</option>
												<option value="10">10일</option>
												<option value="11">11일</option>
												<option value="12">12일</option>
												<option value="13">13일</option>
												<option value="14">14일</option>
												<option value="15">15일</option>
												<option value="16">16일</option>
												<option value="17">17일</option>
												<option value="18">18일</option>
												<option value="19">19일</option>
												<option value="20">20일</option>
												<option value="21">21일</option>
												<option value="22">22일</option>
												<option value="23">23일</option>
												<option value="24">24일</option>
												<option value="25">25일</option>
												<option value="26">26일</option>
												<option value="27">27일</option>
												<option value="28">28일</option>
												<option value="29">29일</option>
												<option value="30">30일</option>
												<option value="31">31일</option>
											</select>
										</div>

									</div>
								</div>
								<div class="form-floating mb-3" style='margin-top: 13px;'>
									<input type="email" class="form-control rounded-4"
										id="floatingemail" placeholder="email"> <label
										for="floatingemail">이메일</label>
								</div>
								<div class="form-floating mb-3 row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">추천인</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;'>확인</button>
								</div>
								<div class="form">
									<label class=""
										style='font-weight: 500; font-size: 18px; margin-bottom: 5px;'>약관
										동의</label>
									<div class="form-checkbox">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"> </label> <a
											class="fw-bold" href="#">이용약관</a>에 동의합니다.
									</div>
								</div>
								<div class="modal-footer border-0 p-0 mt-4">
									<button type="button" class="btn btn-primary">가입</button>
									<button type="button" class="btn btn-warning"
										data-bs-dismiss="modal">취소</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- id찾기 -->
			<div class="modal" id="modalSignin" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">ID찾기</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="홍길동"> <label
										for="floatingInput">이름</label>
								</div>
								<div class="form-floating mb-3">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">이메일</label>
								</div>
							</form>
							<div class="text-end">
								<button type="button" class="btn btn-primary text-end">확인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- pw찾기 -->
			<div class="modal" id="modalSignpw" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">PW찾기</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="홍길동"> <label
										for="floatingInput">이름</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">아이디</label>
								</div>
								<div class="form-floating mb-5">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">이메일</label>
								</div>
								<div class="row g-2 mb-5">
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">변경할 비밀번호</label>
										</div>
									</div>
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">비밀번호 재입력</label>
										</div>
									</div>
								</div>

							</form>
							<div class="text-end">
								<button type="button" class="btn btn-primary text-end">확인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
