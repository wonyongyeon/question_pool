<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
.btn-btn-primary {
  background-color: #484b56;
  color: white;
  cursor: pointer;
  padding: 18px;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}
</style>

<script>
  
function textAreaAdjust(element) {
	  element.style.height = "1px";
	  element.style.height = (25+element.scrollHeight)+"px";
	}

window.onload=function(){
	  document.getElementById("showall").click();
	};
	
</script>

</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<!-- E N D :: headerArea--> 
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2>[${userInfo.user_nick }님의 오답노트입니다.]</h2>
					<input type="hidden" value="${userInfo.user_no}">
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
<!--  						<form method="post" name="frm" id="frm" action="insert.do?exam_no=${exam.exam_no}" enctype="multipart/form-data" onsubmit="return conf();">-->
															<c:forEach var="wlist" items="${wlist}">
									<input type="hidden" name="question_no"
										value="${wlist.question_no }">
										
							
							<p>
							  <button class="btn-btn-primary"  type="button" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">문제</button>
							  <button class="btn-btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">정답 및 분석</button>
							  <button id="showall" class="btn-btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">모두 보기</button>
							</p>
							<div class="row">
							  <div class="col">
							    <div class="collapse multi-collapse" id="multiCollapseExample1">
							      <div class="card card-body">

									<div class="passage">${wlist.passage }</div>
									
									<c:set var="string" value="${wlist.question_content}"/>
									<c:set var="string1" value="${fn:replace(string,'#','<u>')}"/>
									<c:set var="string2" value="${fn:replace(string1,'$','</u>')}"/>
									
									<div class="subcon">
										<div class="qcon">${status.count}. ${string2}</div>
											<c:forEach var="ev" items="${wlist.ex}" varStatus="status">
												<div class="examples">
														(${ev.example}) ${ev.example_content}
												</div>
											</c:forEach>
									</div>
							      </div>
							    </div>
							  </div>
							  <div class="col">
							    <div class="collapse multi-collapse" id="multiCollapseExample2">
							    <div class="card card-body">
											${wlist.answer}
											${wlist.explanation}
											<br><br>내 메모<br>	
											${wlist.memo }
							      		
								    </div>
							    </div>
							  </div>
							  </div>
							</c:forEach>
						</form>
							<!--//btn-->
						</div>
						<!-- //bread -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>
