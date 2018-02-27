<?php
	session_start();
	include("models/m_thanh_vien.php"); 
	class C_thanh_vien
	{
		public function dang_ky($hoten,$diachi,$email,$dienthoai,$user,$pass)
		{
			$m_thanh_vien= new M_thanh_vien();
			$thanh_vien = $m_thanh_vien->dang_ky($hoten,$diachi,$email,$dienthoai,$user,$pass);		
		}

		public function kt_dk_user($gettendangnhap)
		{
			$m_thanh_vien= new M_thanh_vien();
			$thanh_vien = $m_thanh_vien->kt_dk_user($gettendangnhap);	
		}
	}
?>