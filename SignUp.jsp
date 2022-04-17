<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원가입 </title>
	<script type = "text/javascript">
		function check2()
		{
			var f = document.personinfo;
			
			var sid =f.id.value;
			var regExpId =/^[a-z0-9]*$/;
			
			var spw = f.passwd.value;
			var regExpPasswd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&].{4,16}$/;
			
			var sname = f.name1.value;
			var regExpName = /^[가-힣]*$/;
			
			if(f.id.value.length < 4 || f.id.value.length > 16)
	         {
	            alert("아이디는 4~16자 이내로 입력해야 합니다.");
	            f.id.focus();
	            return false;
	         }
			if(!regExpId.test(sid))
	         {
	            alert("아이디은 영문 또는 숫자로만 입력해야합니다");
	            f.id.focus();
	            return false;
	         }
			
			if (!regExpPasswd.test(spw))
					 {
							alert("비밀번호는 숫자로만 입력해주세요");
							f.passwd.focus();
							return false;
					 }
			
			if (f.name1.value.length < 2 || f.name1.value.length > 10 )
		  		 {
		    			alert("아이디는 2~10자 이내로 입력해야 합니다.");
		       		f.name1.focus();
		          return false;
		       }
		  if(!regExpId.test(sname))
		       {
		          alert("이름은 한글로만 입력해야합니다");
		          f.name1.focus();
		          return false;
		       }
			else return true;
		}
		
		
	</script>
</head>
<body>
	
	<hr>
	<form action="MainPage.jsp" method="POST" name="personinfo"
			onsubmit="return check2()">
		<fieldset style="width:330px">
			<legend> 회원가입 </legend>
			아이디 : <br>
			<input type="text" name="id" size="16"><br><br>
			
			비밀번호 : <br>
			<input type="password" name="passwd" size="16"><br><br>
			
			이름 : <br>
			<input type="text" name="name1" size="16"><br><br>
			
			성별 : 
			<input type="radio" name="gender" value="남성">남
			<input type="radio" name="gender" value="여성">여 <br><br>
			
			선호 장르 :<p>
			<input type="checkbox" name = "hobby" value="소설">소설
			<input type="checkbox" name = "hobby" value="만화">만화
			<input type="checkbox" name = "hobby" value="동화	">동화
			<input type="checkbox" name = "hobby" value="심리학">심리학 <p>
			<input type="checkbox" name = "hobby" value="과학">과학
			<input type="checkbox" name = "hobby" value="전기">전기
			<input type="checkbox" name = "hobby" value="에세이">에세이
			<input type="checkbox" name = "hobby" value="자기계발">자기계발 <p>
			
	
			<hr>
			
		<div align="center">
			<input type="submit" value=" 가입하기 ">
			<input type="reset" value =" 취소">
		</div><br>
		</fieldset>
		
			
			
			
	</form>
</body>
</html>