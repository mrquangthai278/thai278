<?php
	include('controllers/c_thanh_vien.php');
	$c_thanh_vien = new C_thanh_vien();
	$gettendangnhap = $_GET['user'];

	if($gettendangnhap==""){
		echo "Tên đăng nhâp không được phép rỗng!!!";
	}else{	
	if(strlen($gettendangnhap)<4)
		echo "Chiều dài của tên đăng nhập phải lớn hơn 4";
		else
		{
			if($gettendangnhap=="administrator"||$gettendangnhap=="admin"||$gettendangnhap=="quantrivien"||$gettendangnhap=="Admin"||$gettendangnhap=="Administrator"){
				echo "Tên đăng nhập: <strong>$gettendangnhap</strong> không được phép đăng ký!";
			}else{			
				if (count($thanh_vien) !=0){
					echo "Tên đăng nhập: <strong>$gettendangnhap</strong> này đã có người sử dụng.";
				}else{
					echo "<img src=\"images/9.png\" width=\"16\" height=\"16\" />";
				}
			}
		}
	}
?>

