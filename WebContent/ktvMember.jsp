<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
會員專區
<hr>
ID:${param.id }
<br>
name:${param.name }
<br>
e-mail:${param.email }
<br>
gender:${param.gender }
<form>
 <div>
 <label for="phone">手機:</label>
 <input type="text" name="phone" id="phone" required />
 </div>
 <br/>
 <div class="buttons">
 <input type="submit" value="送出" />
 </div>
</form>

</body>
</html>