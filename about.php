<?php
//載入 db.php 檔案，讓我們可以透過它連接資料庫
//require_once 'php/db.php';
?>
<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <title>關於我們</title>
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
            <div class="row">
              <div class="col-md-6">
                <h1>Contact</h1>
                <p>
                  您在找合作夥伴嗎？是否也想要創造好用的東西改變這世界？
                  <br>
                  我們需要有夢想且願意放膽實現願望的你，一起加入這行列。
                  <br>
                  或者你有網站建置的需求都可以與我們聯繫呦。
                </p>
              </div>
              <div class="col-md-6">
                <h1>斯威亞資訊科技</h1>
                <p>
                  地址：台南市中西區大同路一段72號
                  <br>
                  電話：06-2148817
                  <br>
                  信箱：<a href="mailto:service@sweea.com">service@sweea.com</a>
                  <br>
                  統一編號：10848574
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 頁底 -->
    <?php include_once 'footer.php'; ?>
  </body>
</html>
