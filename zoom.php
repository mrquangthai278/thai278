﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Phóng to hình ảnh sản phẩm</title>
<style type="text/css">
body 
{
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style></head>
<body>

<?php
	include("controllers/c_san_pham.php");
	$c_san_pham = new C_san_pham();
	$c_san_pham->zoom_san_pham();
?>
</body>



