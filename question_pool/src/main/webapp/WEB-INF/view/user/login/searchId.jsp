<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="/question_pool/css/user/userJoin/reset.css"/>
    <link rel="stylesheet" href="/question_pool/css/user/userJoin/common.css"/>
    <link rel="stylesheet" href="/question_pool/css/user/userJoin/contents.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="/project/js/common.js"></script>
    <script>
    	function searchEmail() {
    		if ($("#user_name").val() == '') {
    			alert('이름을 입력하세요');
    			$("#user_name").focus();
    			return false;
    		}
    		if ($("#user_tel").val() == '') {
    			alert('전화번호를 입력하세요');
    			$("#user_tel").focus();
    			return false;
    		}
    		$.ajax({
    			url : "searchId.do",
    			method:"post",
    			data:{
    				user_name:$("#user_name").val(), 
    				user_tel:$("#user_tel").val()
    			},
    			success:function(res) {
    				if (res.trim() == '') {
    					$("#emailArea").text("이메일이 존재하지 않습니다.");
    				} else {
    					$("#emailArea").text("이메일은 '"+res.trim()+"' 입니다.")
    				}
    			}
    		});
    		
    		return false;
    	}
    </script>
</head>
<body>
    <div class="wrap">
        <form action="login.do" method="post" id="board1" name="board1" onsubmit="return searchEmail();">
            <div class="sub">
                <div class="size">
                <div id = "imgdiv" style="text-align: center;"><a href="/question_pool/user/index.do"><img src="../img/user/mainLogo.png"  height="10%" width="10%" style="margin-left: auto; margin-right: auto;"></a></div>
                    <h3 class="sub_title">이메일 찾기</h3>
                    
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul>
                                    <li><input type="text" id="user_name" name="user_name" placeholder="이름"></li>
                                    <li><input type="text" id="user_tel" name="user_tel" placeholder="전화번호"></li>
                                    <li id="emailArea"></li>
                                </ul>
                                <div class="login_btn"><input type="submit" value="이메일찾기" alt="이메일찾기" /></div>
                            </fieldset>
                            <div class="btnSet clear">
                                <div>
                                    <a href="searchId.do" class="btn">이메일 찾기</a> 
                                    <a href="searchPwd.do" class="btn">비밀번호 찾기</a>
                                </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
        </form>
    </div>
</body>
</html>