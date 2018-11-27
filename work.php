<?php
//載入 db.php 檔案，讓我們可以透過它連接資料庫
require_once 'php/db.php';

//載入 functions.php 檔案，透過裡面的方法取得資料庫的資料
require_once 'php/functions.php';

$work = get_work($_GET['i']);
//echo($work);
$site_title = strip_tags($work['intro']);
?>
<!DOCTYPE html>
<html lang="zh-TW">
	<head>
		<title><?php echo $site_title; ?></title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- 給行動裝置或平板顯示用，根據裝置寬度而定，初始放大比例 1 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 載入 bootstrap 的 css 方便我們快速設計網站-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/style.css"/>
		<link rel="shortcut icon" href="images/favicon.ico">
	</head>

	<body>
		<!-- 頁首 -->
		<?php include_once 'menu.php'; ?>
		<!-- 網站內容 -->
		<div class="content">
			<div class="container">
				<!-- 建立第一個 row 空間，裡面準備放格線系統 -->
				<div class="row">
					<!-- 在 xs 尺寸，佔12格，可參考 http://getbootstrap.com/css/#grid 說明-->
					<div class="col-xs-12">
						<?php if($work):?>
							<?php if($work['image_path']):?>
							<img src='<?php echo $work['image_path'];?>' class="img-responsive">
							<?php else:?>
							<div class="embed-responsive embed-responsive-16by9">
								<video src="<?php echo $work['video_path'];?>" controls></video>
							</div>
							<?php endif;?>
							<?php echo $work['intro'];?>
						<?php else: ?>
							<h3 class="text-center">無此篇作品</h3>
					    <?php endif; ?>
					</div>
				</div>
			</div>
		</div>

		<!-- 頁底 -->
    <?php include_once 'footer.php'; ?>
	</body>
</html>
