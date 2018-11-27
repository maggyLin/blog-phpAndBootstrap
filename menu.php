<?php
//取得目前檔案的名稱。透過$_SERVER['PHP_SELF']先取得路徑
$current_file = $_SERVER['PHP_SELF'];
//echo $current_file; //查看目前取得的檔案完整
//然後透過 basename 取得檔案名稱，加上第二個參數".php"，主要是將取得的檔案去掉 .php 這副檔名稱
$current_file = basename($current_file , ".php");
//echo $current_file; //查看目前取得後的檔名

switch ($current_file) {
	case 'article_list':
	case 'article':
		//為文章列表或完整文章頁
		$index = 1;
		break;
	case 'work_list':
	case 'work':
		//為作品列表或完整作品頁
		$index = 2;
		break;
	case 'about':
		//為關於我們頁
		$index = 3;
		break;
	case 'register':
		//為註冊頁
		$index = 4;
		break;
	default:
		//預設索引為 0
		$index = 0;
		break;
}
?>

<div class="jumbotron">
  <div class="container">
    <!-- 建立第一個 row 空間，裡面準備放格線系統 -->
    <div class="row">
      <!-- 在 xs 尺寸，佔12格，可參考 http://getbootstrap.com/css/#grid 說明-->
      <div class="col-xs-12">
        <!--網站標題-->
        <h1 class="text-center">作品網站</h1>

        <!-- 選單 -->
        <ul class="nav nav-pills">
          <li role="presentation" <?php echo ($index == 0)?'class="active"':'';?>><a href="index.php">首頁</a></li>
          <li role="presentation" <?php echo ($index == 1)?'class="active"':'';?>><a href="article_list.php">所有文章</a></li>
          <li role="presentation" <?php echo ($index == 2)?'class="active"':'';?>><a href="work_list.php">所有作品</a></li>
          <li role="presentation" <?php echo ($index == 3)?'class="active"':'';?>><a href="about.php">關於我們</a></li>
          <li role="presentation" <?php echo ($index == 4)?'class="active"':'';?>><a href="register.php">註冊</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>