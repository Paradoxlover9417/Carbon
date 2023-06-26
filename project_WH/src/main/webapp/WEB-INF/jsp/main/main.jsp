<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>탄소공간지도시스템</title>
<script src="https://openlayers.org/en/v6.5.0/build/ol.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css">

<script type="text/javascript">
function click_position(){
	$("#position").css("background-color", "#D6DCE5");
	$("#upload").css("background-color", "");
	$("#statistics").css("background-color", "");
	$('#classification').load('position.do');
	$('#c_map').empty();
	$('#c_map').load('position_full.do');
}
function click_upload(){
	$("#position").css("background-color", "");
	$("#upload").css("background-color", "#D6DCE5");
	$("#statistics").css("background-color", "");
	$('#classification').load('upload.do');
}
function click_statistics(){
	$("#position").css("background-color", "");
	$("#upload").css("background-color", "");
	$("#statistics").css("background-color", "#D6DCE5");
	$('#classification').load('statistics.do');
	$('#c_map').empty();
	$('#c_map').load('statistics_chart_main.do');
}
function testPage(){
	location.href="testPage.do";
}
</script>
</head>
<body>
<!-- 가장 바깥 div -->
<div class="fullscreen">

	<!-- 오른쪽(map) -->
	<div id="c_map" class="c_map">
	</div>

	
	<!-- 왼쪽(left-bar) -->
	<div class="left-bar">
		<!-- 분류바의 상단 -->
		<div class="left-top">
		탄소공간지도시스템
		</div>
		
		<!-- 분류바의 하단 왼쪽 -->
		<div class="left-left">
			<!-- 버튼1 -->
			<div class="left-button">
			<button id="position" style="width:100%; height:100%;" onClick="click_position()">
				<img src="<%=request.getContextPath() %>/images/position2.png" alt="이미지" />
				<span class="button-text">탄소 지도</span>
			</button>
			</div>
			
			<!-- 버튼2 -->
			<div class="left-button">
			<button id="upload" style="width:100%; height:100%;" onClick="click_upload()">
				<img src="<%=request.getContextPath() %>/images/upload.png" alt="이미지"/>
				<span class="button-text">데이터 삽입</span>
			</button>
			</div>
			
			<!-- 버튼3 -->
			<div class="left-button">
			<button id="statistics" style="width:100%; height:100%;" onClick="click_statistics()">
				<img src="<%=request.getContextPath() %>/images/statistics.png" alt="이미지"/>
				<span class="button-text">통계</span>
			</button>
			</div>
			
			<div class="left-button" style="width:100%; height:100%;">
			<button onClick="testPage()">테스트페이지이동</button>
			</div>
		</div>
		
		<!-- 분류바의 하단 오른쪽 -->
		<div id="classification" class="left-right">
		</div>
	
	</div>


</div>



</body>
</html>