<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<title>完了画面</title>
		<style>
			.container{
				display: table;
				margin: 0 auto;
			}
		</style>
	</head>

	<body>
		<div class="container">
			<h1>完了画面</h1>
			名前:${onamae}<br>
			メールアドレス:${mail_address}<br>
			性別:${sex}<br>
			お問い合わせ種別:${cates}<br>
			住まいエリア:${pref}<br>
			メッセージ:<p style="white-space: pre-wrap;">${message}</p>
			<a href="${pageContext.request.contextPath}/contact/input">入力画面へ戻る</a>
		</div>
	</body>
</html>		