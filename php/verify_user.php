<?php
//載入資料庫與處理的方法
require_once 'db.php';
require_once 'functions.php';

//執行驗證的方法，把帳密帶入，因為會回傳一個值，所以也可以直接寫在if判別中，不用再另外寫變數
if(verify_user($_POST['un'], $_POST['pw']))
{
	//若為true 代表登入成功，印出yes
	echo 'yes';
}
else
{
	//若為 null 或者 false 代表失敗
	echo 'no';	
}

?>