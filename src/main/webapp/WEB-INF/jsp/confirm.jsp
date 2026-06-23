<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<title>確認画面</title>
		<style>
			.container{
				display: table;
				margin: 0 auto;
			}
		</style>
	</head>

	<body>
		<div class="container">
			<h1>確認画面</h1>
			名前:${onamae}<br>
			メールアドレス:${mail_address}<br>
			性別:${sex}<br>
			<%String[] cates= (String[])request.getAttribute("cates"); %>
			お問い合わせ種別:
			<%= java.util.Arrays.toString(cates) %><br>
			住まいエリア:${pref}<br>
			メッセージ:<p style="white-space: pre-wrap;">${message}</p>
			<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
				<input type="hidden" name="onamae" value="${onamae}">
				<input type="hidden" name="mail_address" value="${mail_address}">
				<input type="hidden" name="sex" value="${sex}">
				<% for(String cate : cates) { %>
					<input type="hidden" name="cates" value="<%= cate %>">
				<% } %>
				<input type="hidden" name="pref" value="${pref}">
				<input type="hidden" name="message" value="${message}">
				<input type="submit" value="送信">
			</form>
		</div>
	</body>
</html>