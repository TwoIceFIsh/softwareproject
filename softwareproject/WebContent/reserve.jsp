<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 무조건 이양식을 따라야 한글이 제대로 출력이됩니다.
 -->
<title>기본 구성 페이지!</title>
</head>
<body>
	<script type="text/javascript">
	function selectButton() {
		var userID = $('#userID').val();
 
		$.ajax({
			type : 'POST',
			url : './UserControlServlet',
			data : {
				userID : userID,
				func : func,
				status : status
			},
			success : function(result) {
				if(result ==1 ){
				 
					$('#statusMessage').html('워터펌프 ON.');
					$('#statusMessage').css("color", "green");
					
				}
				if (result == -1 ) {
					$('#statusMessage').html('malfunction.');
					$('#statusMessage').css("color", "red");
				}
			}
		});
	}
 </script>

	<!-- 네비게이션 바를 로딩합니다 -->
	<jsp:include page="nav.jsp" />


	<div id="page-wrapper">
		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">보고싶은 영화를 선택하세요!</h1>
			</div>

		</div>

		<div class="row">
			<div class="col-lg-12">
				<p class="select_theater_Movie">영화</p>
				<button id="buttonA" onClick="checkBUtton" type="button"
					class="btn btn-default btn-lg">나는 최고다</button>
				<button type="button" class="btn btn-default btn-lg">내이름은
					돼지</button>
				<button type="button" class="btn btn-default btn-lg">멋진 나의
					이름은</button>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>나는 최고다</p>
				<button type="button" class="btn btn-default btn-lg">
					2관<br> 09:30 <br>남은좌석 : 80
				</button>
				<button type="button" class="btn btn-default btn-lg">
					1관 <br> 11:30<br>남은좌석 : 40
				</button>
				<button type="button" class="btn btn-default btn-lg">
					3관 <br>15:30 <br>남은좌석 : 23
				</button>
			</div>
		</div>


		<br>
		<br>
		<button type="button" class="btn btn-default btn-lg">좌석 선택하기</button>


	</div>
</body>
</html>